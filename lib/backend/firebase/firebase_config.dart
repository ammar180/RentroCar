import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDvfkLM-8Pc88XDDIoL0_Ep1trZ_5rEit4",
            authDomain: "to-do-gx3ti2.firebaseapp.com",
            projectId: "to-do-gx3ti2",
            storageBucket: "to-do-gx3ti2.appspot.com",
            messagingSenderId: "125403876173",
            appId: "1:125403876173:web:074fcb8e058e349a938504"));
  } else {
    await Firebase.initializeApp();
  }
}
