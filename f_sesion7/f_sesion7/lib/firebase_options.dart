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
    apiKey: 'AIzaSyANsVFMQ5S_lPCyNWdMiFOBNioN-KZYprg',
    appId: '1:683033442809:web:f1d32457325c6aed83e528',
    messagingSenderId: '683033442809',
    projectId: 'connectfirebase-5ea96',
    authDomain: 'connectfirebase-5ea96.firebaseapp.com',
    storageBucket: 'connectfirebase-5ea96.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAz-4OLeQ36oiBbD4FfNTX_Ieh28lJl0to',
    appId: '1:683033442809:android:0f734bcb0b4c33db83e528',
    messagingSenderId: '683033442809',
    projectId: 'connectfirebase-5ea96',
    storageBucket: 'connectfirebase-5ea96.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACBUrzJrwb-AHP3ByUWG1-AQwHe_Pan4k',
    appId: '1:683033442809:ios:c9b77a883545f78283e528',
    messagingSenderId: '683033442809',
    projectId: 'connectfirebase-5ea96',
    storageBucket: 'connectfirebase-5ea96.appspot.com',
    iosClientId: '683033442809-qu1kbrs8u1sk5kf1p3hv15jphs6hmmmr.apps.googleusercontent.com',
    iosBundleId: 'com.example.fSesion7',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACBUrzJrwb-AHP3ByUWG1-AQwHe_Pan4k',
    appId: '1:683033442809:ios:c9b77a883545f78283e528',
    messagingSenderId: '683033442809',
    projectId: 'connectfirebase-5ea96',
    storageBucket: 'connectfirebase-5ea96.appspot.com',
    iosClientId: '683033442809-qu1kbrs8u1sk5kf1p3hv15jphs6hmmmr.apps.googleusercontent.com',
    iosBundleId: 'com.example.fSesion7',
  );
}
