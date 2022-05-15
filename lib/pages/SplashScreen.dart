import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 4),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const LoginPage()))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xff1F319D),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              Text(
                'REPAIR HOME',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ));
  }
}
