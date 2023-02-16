// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyARJEJ5nHNH3uiELkSFIQwxAz1pkErqztc',
    appId: '1:240576553082:web:0e5642b0eed79cf6e09bc3',
    messagingSenderId: '240576553082',
    projectId: 'smoothie-90e79',
    authDomain: 'smoothie-90e79.firebaseapp.com',
    storageBucket: 'smoothie-90e79.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTDZwP_RLqugy3Fjb2dIls_bva9uqUcrQ',
    appId: '1:240576553082:android:e975e8f8b8e46e62e09bc3',
    messagingSenderId: '240576553082',
    projectId: 'smoothie-90e79',
    storageBucket: 'smoothie-90e79.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxpBs6k1-TzbtK0NeCBOLvGBsSdn59sIA',
    appId: '1:240576553082:ios:304ce2f670318522e09bc3',
    messagingSenderId: '240576553082',
    projectId: 'smoothie-90e79',
    storageBucket: 'smoothie-90e79.appspot.com',
    iosClientId: '240576553082-3msk0iodqj7dfr4ouk90j77f3spbl64k.apps.googleusercontent.com',
    iosBundleId: 'com.example.smoothie',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxpBs6k1-TzbtK0NeCBOLvGBsSdn59sIA',
    appId: '1:240576553082:ios:304ce2f670318522e09bc3',
    messagingSenderId: '240576553082',
    projectId: 'smoothie-90e79',
    storageBucket: 'smoothie-90e79.appspot.com',
    iosClientId: '240576553082-3msk0iodqj7dfr4ouk90j77f3spbl64k.apps.googleusercontent.com',
    iosBundleId: 'com.example.smoothie',
  );
}