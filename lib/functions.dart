import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prac_app/biometric_helper.dart';
import 'package:prac_app/home.dart';

abstract class Functions {

  static Future<void> initBio(BuildContext context) async{
     var isAuthenticated = await BiometricHelper.authenticate();
    if(!isAuthenticated){
      await SystemNavigator.pop();
    }

    Future.delayed(const Duration(seconds: 2), (){
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Home())));
    });

  }
}