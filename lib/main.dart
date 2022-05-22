import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_registration_checker/checker_page.dart';
import 'package:vehicle_registration_checker/registration_page.dart';
import 'package:vehicle_registration_checker/registered_numbers.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: registrationPage(),
      home: registeredNumbers(),
    );
  }
}