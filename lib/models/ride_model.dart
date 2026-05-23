import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideModel {
  final String rideId;
  final String riderId;
  final String? driverId;
  final LatLng pickupLocation;
  final LatLng dropoffLocation;
  final String pickupAddress;
  final String dropoffAddress;
  final double distance;
  final double fare;
  final String status;
  final DateTime requestTime;
  final DateTime? acceptTime;
  final DateTime? startTime;
  final DateTime? endTime;
  final double riderRating;
  final double driverRating;
  final String? riderReview;
  final String? driverReview;
  
  RideModel({
    required this.rideId,
    required this.riderId,
    this.driverId,
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.pickupAddress,
    required this.dropoffAddress,
    required this.distance,
    required this.fare,
    required this.status,
    required this.requestTime,
    this.acceptTime,
    this.startTime,
    this.endTime,
    this.riderRating = 0.0,
    this.driverRating = 0.0,
    this.riderReview,
    this.driverReview,
  });
  
  factory RideModel.fromMap(Map<String, dynamic> map) {
    return RideModel(
      rideId: map['rideId'] ?? '',
      riderId: map['riderId'] ?? '',
      driverId: map['driverId'],
      pickupLocation: LatLng(
        map['pickupLat'] ?? 0.0,
        map['pickupLng'] ?? 0.0,
      ),
      dropoffLocation: LatLng(
        map['dropoffLat'] ?? 0.0,
        map['dropoffLng'] ?? 0.0,
      ),
      pickupAddress: map['pickupAddress'] ?? '',
      dropoffAddress: map['dropoffAddress'] ?? '',
      distance: (map['distance'] ?? 0.0).toDouble(),
      fare: (map['fare'] ?? 0.0).toDouble(),
      status: map['status'] ?? 'pending',
      requestTime: map['requestTime'] is Timestamp
          ? (map['requestTime'] as Timestamp).toDate()
          : DateTime.now(),
      acceptTime: map['acceptTime'] is Timestamp
          ? (map['acceptTime'] as Timestamp).toDate()
          : null,
      startTime: map['startTime'] is Timestamp
          ? (map['startTime'] as Timestamp).toDate()
          : null,
      endTime: map['endTime'] is Timestamp
          ? (map['endTime'] as Timestamp).toDate()
          : null,
      riderRating: (map['riderRating'] ?? 0.0).toDouble(),
      driverRating: (map['driverRating'] ?? 0.0).toDouble(),
      riderReview: map['riderReview'],
      driverReview: map['driverReview'],
    );
  }
  
  Map<String, dynamic> toMap() {
    return {
      'rideId': rideId,
      'riderId': riderId,
      'driverId': driverId,
      'pickupLat': pickupLocation.latitude,
      'pickupLng': pickupLocation.longitude,
      'dropoffLat': dropoffLocation.latitude,
      'dropoffLng': dropoffLocation.longitude,
      'pickupAddress': pickupAddress,
      'dropoffAddress': dropoffAddress,
      'distance': distance,
      'fare': fare,
      'status': status,
      'requestTime': Timestamp.fromDate(requestTime),
      'acceptTime': acceptTime != null ? Timestamp.fromDate(acceptTime!) : null,
      'startTime': startTime != null ? Timestamp.fromDate(startTime!) : null,
      'endTime': endTime != null ? Timestamp.fromDate(endTime!) : null,
      'riderRating': riderRating,
      'driverRating': driverRating,
      'riderReview': riderReview,
      'driverReview': driverReview,
    };
  }
}
