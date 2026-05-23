# Complete Taxi App

A complete taxi booking app with rider and driver modules, ready for Google Play Store.

## Features

### Rider Module
- Phone number authentication (OTP)
- Ride booking with Google Maps
- Real-time ride tracking
- Ride history
- Payment integration (Stripe)
- Ratings & reviews
- Push notifications

### Driver Module
- Driver registration with face recognition
- Face verification for going online
- Ride requests management
- Earnings tracking
- Online/Offline toggle

### General
- Firebase integration (Auth, Firestore, Storage, FCM)
- Google Maps integration
- Multi-language support
- Dark mode support
- Privacy Policy & Terms of Service (required for Google Play)

## Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/complete_taxi_app.git
cd complete_taxi_app
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Configure Firebase
1. Create a Firebase project at https://console.firebase.google.com
2. Add Android and iOS apps
3. Download `google-services.json` and place in `android/app/`
4. Download `GoogleService-Info.plist` and place in `ios/Runner/`
5. Enable Firebase Auth (Phone), Firestore, Storage, and FCM

### 4. Configure Google Maps
1. Get an API key from https://console.cloud.google.com
2. Add to `android/app/src/main/AndroidManifest.xml`:
   ```xml
   <meta-data
       android:name="com.google.android.geo.API_KEY"
       android:value="YOUR_API_KEY" />
   ```

### 5. Run the app
```bash
flutter run
```

## Building for Release

### Android (Google Play)
```bash
flutter build appbundle --release
```
Upload the `.aab` file to Google Play Console.

### iOS (App Store)
```bash
flutter build ios --release
```
Then archive and upload via Xcode.

## Required for Google Play Store

✅ Privacy Policy (included in `assets/privacy_policy.html`)
✅ Terms of Service (included in `assets/terms_of_service.html`)
✅ App content rating configured
✅ App signing configured

## Folder Structure

```
lib/
  models/          # Data models
  screens/         # UI screens
    auth/          # Login, Register
    driver/        # Driver screens
  utils/           # Utilities and constants
```

## Dependencies

- Flutter 3.29+
- Firebase
- Google Maps
- Riverpod (State Management)
- Go Router (Navigation)
- Google ML Kit (Face Detection)

## License

MIT
