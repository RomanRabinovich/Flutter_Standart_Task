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
    apiKey: 'AIzaSyDMwR7d45nNBzrQ5G8hcVKxfRfdQOmDMik',
    appId: '1:371290059056:web:de5f2591060f2f838058f5',
    messagingSenderId: '371290059056',
    projectId: 'reddit-9b336',
    authDomain: 'reddit-9b336.firebaseapp.com',
    storageBucket: 'reddit-9b336.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrY99iXhwSEB86fBENMjQ5RsXI_W_Wvnk',
    appId: '1:371290059056:android:be30074cad332eb58058f5',
    messagingSenderId: '371290059056',
    projectId: 'reddit-9b336',
    storageBucket: 'reddit-9b336.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIbmaOwRUEGg1E9qjVuzyoZ_KaYRaTxEU',
    appId: '1:371290059056:ios:f4cfe49433f46c498058f5',
    messagingSenderId: '371290059056',
    projectId: 'reddit-9b336',
    storageBucket: 'reddit-9b336.appspot.com',
    iosClientId: '371290059056-huto6qr9ou2shf5j0tlgg31lm2a23vof.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIbmaOwRUEGg1E9qjVuzyoZ_KaYRaTxEU',
    appId: '1:371290059056:ios:f4cfe49433f46c498058f5',
    messagingSenderId: '371290059056',
    projectId: 'reddit-9b336',
    storageBucket: 'reddit-9b336.appspot.com',
    iosClientId: '371290059056-huto6qr9ou2shf5j0tlgg31lm2a23vof.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication4',
  );
}