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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDDaCsyZ9LsepN3hgpJ-UFFYoLSecbUTc4',
    appId: '1:493243648255:web:9708f3169fa206926ee4ca',
    messagingSenderId: '493243648255',
    projectId: 'eduprimeppb',
    authDomain: 'eduprimeppb.firebaseapp.com',
    storageBucket: 'eduprimeppb.appspot.com',
    measurementId: 'G-RDT3X2MG9H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkkxFvcNJG4FToaB04cYCtq0xbrQPZVUQ',
    appId: '1:493243648255:android:ab756d15ac02617c6ee4ca',
    messagingSenderId: '493243648255',
    projectId: 'eduprimeppb',
    storageBucket: 'eduprimeppb.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDDaCsyZ9LsepN3hgpJ-UFFYoLSecbUTc4',
    appId: '1:493243648255:web:c6b62389dd7778a36ee4ca',
    messagingSenderId: '493243648255',
    projectId: 'eduprimeppb',
    authDomain: 'eduprimeppb.firebaseapp.com',
    storageBucket: 'eduprimeppb.appspot.com',
    measurementId: 'G-7TB6LL8MFS',
  );
}