import '../../model/sigup_foundation.dart';

abstract class FoundaionSiginUpState {}

class FoundaionInialState extends FoundaionSiginUpState {}

class FoundaionSignUpLoadingState extends FoundaionSiginUpState {}

class FoundaionSignUpSuccessState extends FoundaionSiginUpState {
  final JarasSiginupFoundation jarasSiginupFoundation;

  FoundaionSignUpSuccessState(this.jarasSiginupFoundation);
}

class FoundaionSignUpErrorState extends FoundaionSiginUpState {}
