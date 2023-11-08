#pragma once
/*
 *  Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 *
 *  FEC and NACK added bitrate is handled outside class
 */

#include <stdint.h>

#include <deque>
#include <utility>
#include <vector>

#include <optional>

#include "ns3/data_rate.h"
#include "ns3/time_delta.h"
#include "ns3/timestamp.h"
#include "ns3/common.h"


class LinkCapacityTracker {
public:
	LinkCapacityTracker();
	~LinkCapacityTracker();
	// Call when a new delay-based estimate is available.
	void UpdateDelayBasedEstimate(Timestamp at_time,
		RtcDataRate delay_based_bitrate);
	void OnStartingRate(RtcDataRate start_rate);
	void OnRateUpdate(std::optional<RtcDataRate> acknowledged,
		RtcDataRate target,
		Timestamp at_time);
	void OnRttBackoff(RtcDataRate backoff_rate, Timestamp at_time);
	RtcDataRate estimate() const;

private:
	TimeDelta tracking_rate;
	double capacity_estimate_bps_ = 0;
	Timestamp last_link_capacity_update_ = Timestamp::MinusInfinity();
	RtcDataRate last_delay_based_estimate_ = RtcDataRate::PlusInfinity();
};

class RttBasedBackoff {
public:
	explicit RttBasedBackoff();
	~RttBasedBackoff();
	void UpdatePropagationRtt(Timestamp at_time, TimeDelta propagation_rtt);
	TimeDelta CorrectedRtt(Timestamp at_time) const;

	bool disabled_;
	TimeDelta configured_limit_;
	double drop_fraction_;
	TimeDelta drop_interval_;
	RtcDataRate bandwidth_floor_;

public:
	TimeDelta rtt_limit_;
	Timestamp last_propagation_rtt_update_;
	TimeDelta last_propagation_rtt_;
	Timestamp last_packet_sent_;
};

class LossBasedBweV0 {
public:
	LossBasedBweV0();
	~LossBasedBweV0();

	void Reset();

	RtcDataRate target_rate() const;
	uint8_t fraction_loss() const { return last_fraction_loss_; }
	TimeDelta round_trip_time() const { return last_round_trip_time_; }

	RtcDataRate GetEstimatedLinkCapacity() const;
	// Call periodically to update estimate.
	void UpdateEstimate(Timestamp at_time);
	void OnSentPacket(const SentPacket& sent_packet);
	void UpdatePropagationRtt(Timestamp at_time, TimeDelta propagation_rtt);

	// Call when we receive a RTCP message with TMMBR or REMB.
	void UpdateReceiverEstimate(Timestamp at_time, RtcDataRate bandwidth);

	// Call when a new delay-based estimate is available.
	void UpdateDelayBasedEstimate(Timestamp at_time, RtcDataRate bitrate);

	// Call when we receive a RTCP message with a ReceiveBlock.
	void UpdatePacketsLost(int64_t packets_lost,
		int64_t number_of_packets,
		Timestamp at_time);

	// Call when we receive a RTCP message with a ReceiveBlock.
	void UpdateRtt(TimeDelta rtt, Timestamp at_time);

	void SetBitrates(std::optional<RtcDataRate> send_bitrate,
		RtcDataRate min_bitrate,
		RtcDataRate max_bitrate,
		Timestamp at_time);
	void SetSendBitrate(RtcDataRate bitrate, Timestamp at_time);
	void SetMinMaxBitrate(RtcDataRate min_bitrate, RtcDataRate max_bitrate);
	int GetMinBitrate() const;
	void SetAcknowledgedRate(std::optional<RtcDataRate> acknowledged_rate,
		Timestamp at_time);	

	void IncomingPacketFeedbackVector(const TransportPacketsFeedback& report);
private:
	enum UmaState { kNoUpdate, kFirstDone, kDone };
	bool IsInStartPhase(Timestamp at_time) const;
	void UpdateUmaStatsPacketsLost(Timestamp at_time, int packets_lost);

	// Updates history of min bitrates.
	// After this method returns min_bitrate_history_.front().second contains the
	// min bitrate used during last kBweIncreaseIntervalMs.
	void UpdateMinHistory(Timestamp at_time);

	// Gets the upper limit for the target bitrate. This is the minimum of the
	// delay based limit, the receiver limit and the loss based controller limit.
	RtcDataRate GetUpperLimit() const;

	// Cap `bitrate` to [min_bitrate_configured_, max_bitrate_configured_] and
	// set `current_bitrate_` to the capped value and updates the event log.
	void UpdateTargetBitrate(RtcDataRate bitrate, Timestamp at_time);
	// Applies lower and upper bounds to the current target rate.
	// TODO(srte): This seems to be called even when limits haven't changed, that
	// should be cleaned up.
	void ApplyTargetLimits(Timestamp at_time);	

	RttBasedBackoff rtt_backoff_;
	LinkCapacityTracker link_capacity_;

	std::deque<std::pair<Timestamp, RtcDataRate> > min_bitrate_history_;

	// incoming filters
	int lost_packets_since_last_loss_update_;
	int expected_packets_since_last_loss_update_;

	std::optional<RtcDataRate> acknowledged_rate_;
	RtcDataRate current_target_;
	RtcDataRate last_logged_target_;
	RtcDataRate min_bitrate_configured_;
	RtcDataRate max_bitrate_configured_;
	Timestamp last_low_bitrate_log_;

	bool has_decreased_since_last_fraction_loss_;
	Timestamp last_loss_feedback_;
	Timestamp last_loss_packet_report_;
	uint8_t last_fraction_loss_;
	uint8_t last_logged_fraction_loss_;
	TimeDelta last_round_trip_time_;

	// The max bitrate as set by the receiver in the call. This is typically
	// signalled using the REMB RTCP message and is used when we don't have any
	// send side delay based estimate.
	RtcDataRate receiver_limit_;
	RtcDataRate delay_based_limit_;
	Timestamp time_last_decrease_;
	Timestamp first_report_time_;
	int initially_lost_packets_;
	RtcDataRate bitrate_at_2_seconds_;
	UmaState uma_update_state_;
	UmaState uma_rtt_state_;
	std::vector<bool> rampup_uma_stats_updated_;	
	float low_loss_threshold_;
	float high_loss_threshold_;
	RtcDataRate bitrate_threshold_;
	/*LossBasedBandwidthEstimation loss_based_bandwidth_estimator_v1_;
	LossBasedBweV2 loss_based_bandwidth_estimator_v2_;*/
	bool disable_receiver_limit_caps_only_;
};
