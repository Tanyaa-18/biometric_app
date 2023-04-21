
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prac_app/biometric_helper.dart';
import 'package:prac_app/functions.dart';
import 'package:prac_app/home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

    @override
  void initState() {
    // TODO: implement initState
    Functions.initBio(context);

   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
        child: Text('Splash Screen'),
      ),);
  }
}