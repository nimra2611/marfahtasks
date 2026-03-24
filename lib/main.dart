import 'package:flutter/material.dart';
import 'package:marfahtasks/screens/Login%20B/LoginPageB.dart';
import 'package:marfahtasks/screens/Login%20B/LoginPageC.dart';
import 'package:marfahtasks/screens/Login%20B/MainDashboard.dart';
import 'package:marfahtasks/screens/Login%20B/SignUpB.dart';
import 'package:marfahtasks/screens/LoginA/login_page.dart';
import 'package:marfahtasks/screens/LoginA/sign_up.dart';
import 'package:marfahtasks/screens/screen_selections.dart';

void main()
{
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainDashboard(),
    );

  }
}

