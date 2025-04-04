// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDutTuFmbaZd8xCatKwPV34ATZ2-oTxKH8',
    appId: '1:324121529928:web:943379a784301138d7d27d',
    messagingSenderId: '324121529928',
    projectId: 'insurancemgmt-27190',
    authDomain: 'insurancemgmt-27190.firebaseapp.com',
    storageBucket: 'insurancemgmt-27190.firebasestorage.app',
    measurementId: 'G-2LN2962S0R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCpNEcpq8JFoyzQHe1_3775gSUzsFgBTI',
    appId: '1:324121529928:android:05547a0f6fdd26c6d7d27d',
    messagingSenderId: '324121529928',
    projectId: 'insurancemgmt-27190',
    storageBucket: 'insurancemgmt-27190.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDscVz_Q4YlzgadODj90q_pbY4wbVHhfhs',
    appId: '1:324121529928:ios:96bbcd44fad28e61d7d27d',
    messagingSenderId: '324121529928',
    projectId: 'insurancemgmt-27190',
    storageBucket: 'insurancemgmt-27190.firebasestorage.app',
    iosBundleId: 'com.example.carsMs',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDscVz_Q4YlzgadODj90q_pbY4wbVHhfhs',
    appId: '1:324121529928:ios:96bbcd44fad28e61d7d27d',
    messagingSenderId: '324121529928',
    projectId: 'insurancemgmt-27190',
    storageBucket: 'insurancemgmt-27190.firebasestorage.app',
    iosBundleId: 'com.example.carsMs',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDutTuFmbaZd8xCatKwPV34ATZ2-oTxKH8',
    appId: '1:324121529928:web:3e197bb30493892ad7d27d',
    messagingSenderId: '324121529928',
    projectId: 'insurancemgmt-27190',
    authDomain: 'insurancemgmt-27190.firebaseapp.com',
    storageBucket: 'insurancemgmt-27190.firebasestorage.app',
    measurementId: 'G-036S6GYX90',
  );
}
