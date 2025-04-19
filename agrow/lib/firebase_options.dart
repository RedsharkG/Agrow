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
    apiKey: 'AIzaSyD9gUBczYd1UatrJRRashO2_5qDpZNoqSs',
    appId: '1:882435456819:web:c4e2b1dc4c6121acbf0846',
    messagingSenderId: '882435456819',
    projectId: 'agrow-f1798',
    authDomain: 'agrow-f1798.firebaseapp.com',
    storageBucket: 'agrow-f1798.firebasestorage.app',
    measurementId: 'G-WMYYMR7YRP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAudhEA2AZyA-vtc3mhwnyvuC7nB-5r-2w',
    appId: '1:882435456819:android:42203fc920b5b52dbf0846',
    messagingSenderId: '882435456819',
    projectId: 'agrow-f1798',
    storageBucket: 'agrow-f1798.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2vDj7QJ8VX_l6RB4xsUlBKfh-oQRvUT4',
    appId: '1:882435456819:ios:453e6a00f19a8f15bf0846',
    messagingSenderId: '882435456819',
    projectId: 'agrow-f1798',
    storageBucket: 'agrow-f1798.firebasestorage.app',
    iosBundleId: 'com.example.agrow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2vDj7QJ8VX_l6RB4xsUlBKfh-oQRvUT4',
    appId: '1:882435456819:ios:453e6a00f19a8f15bf0846',
    messagingSenderId: '882435456819',
    projectId: 'agrow-f1798',
    storageBucket: 'agrow-f1798.firebasestorage.app',
    iosBundleId: 'com.example.agrow',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD9gUBczYd1UatrJRRashO2_5qDpZNoqSs',
    appId: '1:882435456819:web:adeb79082911ae6abf0846',
    messagingSenderId: '882435456819',
    projectId: 'agrow-f1798',
    authDomain: 'agrow-f1798.firebaseapp.com',
    storageBucket: 'agrow-f1798.firebasestorage.app',
    measurementId: 'G-SWNGR9KMQH',
  );
}
