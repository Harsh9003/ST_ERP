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
    apiKey: 'AIzaSyBjWd9e7G9fUNYnYS72hOdn73jOeO6BkMA',
    appId: '1:783256878276:web:fec0b93d72a2be97295d91',
    messagingSenderId: '783256878276',
    projectId: 'studenterpportal',
    authDomain: 'studenterpportal.firebaseapp.com',
    storageBucket: 'studenterpportal.appspot.com',
    measurementId: 'G-LVQ8ZDTD6K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChuEYNRagkyDMmw1cn2SaYhSzxCXHYndg',
    appId: '1:783256878276:android:517895702028e4ef295d91',
    messagingSenderId: '783256878276',
    projectId: 'studenterpportal',
    storageBucket: 'studenterpportal.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDg9XAA1Eu4PvhEuEW4D8dbECmuWxMFJHs',
    appId: '1:783256878276:ios:7a7df1af70b0dc8e295d91',
    messagingSenderId: '783256878276',
    projectId: 'studenterpportal',
    storageBucket: 'studenterpportal.appspot.com',
    iosBundleId: 'com.example.studenterp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDg9XAA1Eu4PvhEuEW4D8dbECmuWxMFJHs',
    appId: '1:783256878276:ios:1877a6cf48e9428d295d91',
    messagingSenderId: '783256878276',
    projectId: 'studenterpportal',
    storageBucket: 'studenterpportal.appspot.com',
    iosBundleId: 'com.example.studenterp.RunnerTests',
  );
}