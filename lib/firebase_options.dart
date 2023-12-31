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
    apiKey: 'AIzaSyCsa9JwbsUrEdgkSGlEl1krH7yF7MLKSkA',
    appId: '1:860367574539:web:93772e72f59d9e5a9e990e',
    messagingSenderId: '860367574539',
    projectId: 'masteraimobile',
    authDomain: 'masteraimobile.firebaseapp.com',
    storageBucket: 'masteraimobile.appspot.com',
    measurementId: 'G-CMR8Z31LKE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmsy5BnB3ZFwlPUt907jQS9pdHy5bC3CI',
    appId: '1:860367574539:android:019f585f8547761b9e990e',
    messagingSenderId: '860367574539',
    projectId: 'masteraimobile',
    storageBucket: 'masteraimobile.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCoHQGQ1AZy0u0F-6BPS-0L4DPtbFfI8CI',
    appId: '1:860367574539:ios:4922839feab92c349e990e',
    messagingSenderId: '860367574539',
    projectId: 'masteraimobile',
    storageBucket: 'masteraimobile.appspot.com',
    iosBundleId: 'com.example.firstapplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCoHQGQ1AZy0u0F-6BPS-0L4DPtbFfI8CI',
    appId: '1:860367574539:ios:975c05e92733db5d9e990e',
    messagingSenderId: '860367574539',
    projectId: 'masteraimobile',
    storageBucket: 'masteraimobile.appspot.com',
    iosBundleId: 'com.example.firstapplication.RunnerTests',
  );
}
