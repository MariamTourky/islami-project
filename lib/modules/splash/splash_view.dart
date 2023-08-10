import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../layout/homelayout.dart';

class SplashView extends StatelessWidget {
  static const String routename = "Splash";

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(HomeLayout.routename);
      },
    );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assest/images/splash.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
