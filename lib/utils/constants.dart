class Constants {
  // App Info
  static const String appName = 'Complete Taxi';
  static const String appVersion = '1.0.0';
  
  // Firebase Collection Names
  static const String usersCollection = 'users';
  static const String ridesCollection = 'rides';
  static const String driversCollection = 'drivers';
  static const String paymentsCollection = 'payments';
  
  // Google Maps
  static const String googleMapsApiKey = 'YOUR_GOOGLE_MAPS_API_KEY_HERE';
  
  // Payment
  static const String stripePublishableKey = 'YOUR_STRIPE_KEY_HERE';
  
  // Notification Topics
  static const String topicAllUsers = 'all_users';
  static const String topicDrivers = 'drivers';
  
  // Ride Status
  static const String rideStatusPending = 'pending';
  static const String rideStatusAccepted = 'accepted';
  static const String rideStatusArrived = 'arrived';
  static const String rideStatusInProgress = 'inProgress';
  static const String rideStatusCompleted = 'completed';
  static const String rideStatusCancelled = 'cancelled';
}
