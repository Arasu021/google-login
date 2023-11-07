import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_login_sample/firebase_options.dart';
import 'package:google_login_sample/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // For new project, To generate Firebase Options file,
  // create Firebase project in firebase console and Run the "flutterfire configure" command,
  // select the firebase project. import "firebase_options.dart"
  // Close and open the IDE again
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA9xQ17iDNXXoihbu1EtB3BKyDcyi-rcUo",
          authDomain: "login-sample-20335.firebaseapp.com",
          projectId: "login-sample-20335",
          storageBucket: "login-sample-20335.appspot.com",
          messagingSenderId: "649556311448",
          appId: "1:649556311448:web:75f7e88cedc0efe3eb7fed"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
