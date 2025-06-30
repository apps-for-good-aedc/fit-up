import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCflctgI33jDYMspQ6WJeBH-k1PVf_lZCg",
            authDomain: "flutterflow-105f5.firebaseapp.com",
            projectId: "flutterflow-105f5",
            storageBucket: "flutterflow-105f5.firebasestorage.app",
            messagingSenderId: "299395289778",
            appId: "1:299395289778:web:ad2589b25c3f70e5bfefab"));
  } else {
    await Firebase.initializeApp();
  }
}
