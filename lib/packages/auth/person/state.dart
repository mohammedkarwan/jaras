import '../../model/siginUp_Person.dart';

abstract class PersonSiginUpState {}

class LoginInialState extends PersonSiginUpState {}

class PersonSignUpLoadingState extends PersonSiginUpState {}

class PersonSignUpSuccessState extends PersonSiginUpState {
  final JarasSiginupModel jarasSiginupModel;

  PersonSignUpSuccessState(this.jarasSiginupModel);
}

class PersonSignUpErrorState extends PersonSiginUpState {}
