import '../../../model/login_model.dart';

abstract class LoginStates {}

class LoginInialState extends LoginStates {}

class LoginChangeLangeLodingState extends LoginStates {}

class LoginChangeLangeSuccessState extends LoginStates {}

class LoginChangeLangeErorrState extends LoginStates {}

class JarasLoginLoadingState extends LoginStates {}

class JarasLoginSuccessState extends LoginStates {
  JarasLoginData jarasLoginData;

  JarasLoginSuccessState(this.jarasLoginData);
}

class JarasLoginErrorState extends LoginStates {}

class JarasLoginGetToken extends LoginStates {}
