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
    apiKey: 'AIzaSyDi7Wv-0BbEwnk_2sruv1NO92aABdXA-Sk',
    appId: '1:93832734285:web:30bf49e8c1f77e1272de04',
    messagingSenderId: '93832734285',
    projectId: 'motorbike-1b8d1',
    authDomain: 'motorbike-1b8d1.firebaseapp.com',
    storageBucket: 'motorbike-1b8d1.appspot.com',
    measurementId: 'G-S8YLK59HDX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdFDb7FCj-bJ42-FpWvdd3HYoi21EspW4',
    appId: '1:93832734285:android:ef2071fa6be56e6c72de04',
    messagingSenderId: '93832734285',
    projectId: 'motorbike-1b8d1',
    storageBucket: 'motorbike-1b8d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDw0mOxss_Bvi6JxM-C3tOnJp6nr_TYHZo',
    appId: '1:93832734285:ios:605322df70fd9ee272de04',
    messagingSenderId: '93832734285',
    projectId: 'motorbike-1b8d1',
    storageBucket: 'motorbike-1b8d1.appspot.com',
    iosClientId: '93832734285-s19svae80v4knv68n1cj99m7ctblli5t.apps.googleusercontent.com',
    iosBundleId: 'com.example.clientes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDw0mOxss_Bvi6JxM-C3tOnJp6nr_TYHZo',
    appId: '1:93832734285:ios:4c6fa504c767fb8672de04',
    messagingSenderId: '93832734285',
    projectId: 'motorbike-1b8d1',
    storageBucket: 'motorbike-1b8d1.appspot.com',
    iosClientId: '93832734285-90pi046drecqr8o9h0ihbdgaqvk87fba.apps.googleusercontent.com',
    iosBundleId: 'com.example.clientes.RunnerTests',
  );
}
