// ignore_for_file: constant_identifier_names

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      //return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        //return ios;
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey:
        'AIzaSyDWT-fltNcppNuMqWwSCfjPgbq2tpZaWHw', // google-services.json থেকে copy করো
    appId:
        '1:716134109965:android:fe34da927d703e25ce9644', // google-services.json থেকে
    messagingSenderId: '716134109965', // google-services.json থেকে
    projectId: 'food-app-b7f65', // google-services.json থেকে
    storageBucket:
        'food-app-b7f65.firebasestorage.app', // google-services.json থেকে
  );
}
