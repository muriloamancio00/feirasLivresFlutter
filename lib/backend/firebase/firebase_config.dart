import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBYNMtqkZOHc23K6tZYVTv3OEMbAXCBeVQ",
            authDomain: "semcodar-tutorialff-sr517e.firebaseapp.com",
            projectId: "semcodar-tutorialff-sr517e",
            storageBucket: "semcodar-tutorialff-sr517e.appspot.com",
            messagingSenderId: "735184660673",
            appId: "1:735184660673:web:b22e32612889c877700c40"));
  } else {
    await Firebase.initializeApp();
  }
}
