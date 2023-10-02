import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBFbeKfOhSmjyNKEajYFM8BPp5se2QnD7I",
            authDomain: "nocode-80c8e.firebaseapp.com",
            projectId: "nocode-80c8e",
            storageBucket: "nocode-80c8e.appspot.com",
            messagingSenderId: "165013543353",
            appId: "1:165013543353:web:971798e834c945b423fe68"));
  } else {
    await Firebase.initializeApp();
  }
}
