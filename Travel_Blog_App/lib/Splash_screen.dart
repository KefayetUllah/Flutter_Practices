import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_blog_app/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 10),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: LinearProgressIndicator(color: Colors.green)),
    );
  }
}
