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
    apiKey: 'AIzaSyBb-Zx4LGdQF6Xx_C_T7IX7vxjBR_QOiYI',
    appId: '1:626109560310:web:bd9d67e2528f4a0ac503d7',
    messagingSenderId: '626109560310',
    projectId: 'projet-final-mobile-64a3a',
    authDomain: 'projet-final-mobile-64a3a.firebaseapp.com',
    storageBucket: 'projet-final-mobile-64a3a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2DTHkag07amwSgNoh6beQtaef0NkcaCo',
    appId: '1:626109560310:android:db2c758896c49711c503d7',
    messagingSenderId: '626109560310',
    projectId: 'projet-final-mobile-64a3a',
    storageBucket: 'projet-final-mobile-64a3a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVfctwWkCY2ZJKLH-C2vi6ta0ySlwvKeg',
    appId: '1:626109560310:ios:0360a5c98e4d2d2dc503d7',
    messagingSenderId: '626109560310',
    projectId: 'projet-final-mobile-64a3a',
    storageBucket: 'projet-final-mobile-64a3a.appspot.com',
    iosBundleId: 'com.example.projetFinalMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVfctwWkCY2ZJKLH-C2vi6ta0ySlwvKeg',
    appId: '1:626109560310:ios:0360a5c98e4d2d2dc503d7',
    messagingSenderId: '626109560310',
    projectId: 'projet-final-mobile-64a3a',
    storageBucket: 'projet-final-mobile-64a3a.appspot.com',
    iosBundleId: 'com.example.projetFinalMobile',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBb-Zx4LGdQF6Xx_C_T7IX7vxjBR_QOiYI',
    appId: '1:626109560310:web:1f188a405504cc34c503d7',
    messagingSenderId: '626109560310',
    projectId: 'projet-final-mobile-64a3a',
    authDomain: 'projet-final-mobile-64a3a.firebaseapp.com',
    storageBucket: 'projet-final-mobile-64a3a.appspot.com',
  );
}
