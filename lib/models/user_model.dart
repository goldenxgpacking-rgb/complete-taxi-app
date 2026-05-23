import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String name;
  final String phone;
  final String email;
  final String userType; // 'rider' or 'driver'
  final bool isOnline;
  final double rating;
  final int totalRides;
  final DateTime createdAt;
  
  UserModel({
    required this.uid,
    required this.name,
    required this.phone,
    this.email = '',
    required this.userType,
    this.isOnline = false,
    this.rating = 5.0,
    this.totalRides = 0,
    required this.createdAt,
  });
  
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      userType: map['userType'] ?? 'rider',
      isOnline: map['isOnline'] ?? false,
      rating: (map['rating'] ?? 5.0).toDouble(),
      totalRides: map['totalRides'] ?? 0,
      createdAt: map['createdAt'] is Timestamp 
          ? (map['createdAt'] as Timestamp).toDate()
          : DateTime.now(),
    );
  }
  
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'phone': phone,
      'email': email,
      'userType': userType,
      'isOnline': isOnline,
      'rating': rating,
      'totalRides': totalRides,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }
}
