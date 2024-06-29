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
    apiKey: 'AIzaSyAmnItyG-FEJ60xGkDQ8Q_AhVsUa_mMrZw',
    appId: '1:935350337356:web:4513905914977fde0e59e9',
    messagingSenderId: '935350337356',
    projectId: 'loginecadastro-b7b35',
    authDomain: 'loginecadastro-b7b35.firebaseapp.com',
    storageBucket: 'loginecadastro-b7b35.appspot.com',
    measurementId: 'G-WPJNPF41H7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnnv2gaj8nTi5Asc-6gtyrdoXJ-xF8JoI',
    appId: '1:935350337356:android:c1dbdc790895106d0e59e9',
    messagingSenderId: '935350337356',
    projectId: 'loginecadastro-b7b35',
    storageBucket: 'loginecadastro-b7b35.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDX5PB8Q6DuOigYLWF80eYKf9TQUStBYVM',
    appId: '1:935350337356:ios:a04ea5e47bb570cb0e59e9',
    messagingSenderId: '935350337356',
    projectId: 'loginecadastro-b7b35',
    storageBucket: 'loginecadastro-b7b35.appspot.com',
    iosBundleId: 'com.example.loginecadastro',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDX5PB8Q6DuOigYLWF80eYKf9TQUStBYVM',
    appId: '1:935350337356:ios:a04ea5e47bb570cb0e59e9',
    messagingSenderId: '935350337356',
    projectId: 'loginecadastro-b7b35',
    storageBucket: 'loginecadastro-b7b35.appspot.com',
    iosBundleId: 'com.example.loginecadastro',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmnItyG-FEJ60xGkDQ8Q_AhVsUa_mMrZw',
    appId: '1:935350337356:web:05f37c81114b59700e59e9',
    messagingSenderId: '935350337356',
    projectId: 'loginecadastro-b7b35',
    authDomain: 'loginecadastro-b7b35.firebaseapp.com',
    storageBucket: 'loginecadastro-b7b35.appspot.com',
    measurementId: 'G-P3BHB2JP14',
  );

}