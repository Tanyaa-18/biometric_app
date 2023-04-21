

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

class BiometricHelper{

static Future<bool> authenticate() async{

bool authenticated = false;
try{
  final auth = LocalAuthentication();
  authenticated =  await auth.authenticate(localizedReason: 'Unlock App',
  options: const AuthenticationOptions(
    useErrorDialogs: false,
    stickyAuth: true,
  ),
  );
  return authenticated;

}on PlatformException catch(e){
  if(e.code == auth_error.notAvailable){
    print('biometrics not available');
    return true;
  }else if(e.code == auth_error.notEnrolled){
    print('biometrics not enrolled');
    return true;
  }
  return false;

}

}
}