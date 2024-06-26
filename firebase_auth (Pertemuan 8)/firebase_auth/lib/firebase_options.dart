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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHspmsN28xNjlMe0w9azm4tEW3_cNRfbo',
    appId: '1:434519473309:ios:4c688a65fee5c584146874',
    messagingSenderId: '434519473309',
    projectId: 'prakflutterfirebase-5d56d',
    storageBucket: 'prakflutterfirebase-5d56d.appspot.com',
    iosBundleId: 'com.example.firebaseAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHspmsN28xNjlMe0w9azm4tEW3_cNRfbo',
    appId: '1:434519473309:ios:4c688a65fee5c584146874',
    messagingSenderId: '434519473309',
    projectId: 'prakflutterfirebase-5d56d',
    storageBucket: 'prakflutterfirebase-5d56d.appspot.com',
    iosBundleId: 'com.example.firebaseAuth',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDvAhbIPr0TfFCLbUp2Q5kS8-NybK4-wnc',
    appId: '1:434519473309:web:35442450a4a39629146874',
    messagingSenderId: '434519473309',
    projectId: 'prakflutterfirebase-5d56d',
    authDomain: 'prakflutterfirebase-5d56d.firebaseapp.com',
    storageBucket: 'prakflutterfirebase-5d56d.appspot.com',
    measurementId: 'G-5N8RP98XZ6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1E8zpamgvtEhHOU5JfGlrh94ZkPIF2es',
    appId: '1:434519473309:android:6ddcbcdeeac97ef2146874',
    messagingSenderId: '434519473309',
    projectId: 'prakflutterfirebase-5d56d',
    storageBucket: 'prakflutterfirebase-5d56d.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDvAhbIPr0TfFCLbUp2Q5kS8-NybK4-wnc',
    appId: '1:434519473309:web:515f38897488a41f146874',
    messagingSenderId: '434519473309',
    projectId: 'prakflutterfirebase-5d56d',
    authDomain: 'prakflutterfirebase-5d56d.firebaseapp.com',
    storageBucket: 'prakflutterfirebase-5d56d.appspot.com',
    measurementId: 'G-VQSNDEY079',
  );

}