import 'package:bloc/bloc.dart';
import 'package:ee/packages/auth/person/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helper/dio_helper.dart';
import '../../model/siginUp_Person.dart';

class PersonSiginUpCubit extends Cubit<PersonSiginUpState> {
  PersonSiginUpCubit() : super(LoginInialState());
  JarasSiginupModel? jarasSiginupModel;
  static PersonSiginUpCubit get(context) => BlocProvider.of(context);
  void signUpData({
    required String user_type,
    required String name_ar,
    required String name_en,
    required String phone,
    required String email,
    required String password,
    required String language,
  }) {
    emit(PersonSignUpLoadingState());
    DioHelper.postData(url: 'sign_up/person', data: {
      'user_type': user_type,
      'name_ar': name_ar,
      'name_en': name_en,
      'phone': phone,
      'email': email,
      'password': password,
      'language': language,
      'country_id': 20,
    }).then((value) {
      jarasSiginupModel = JarasSiginupModel.fromJson(value.data);

      print(jarasSiginupModel!.message);
      emit(PersonSignUpSuccessState(jarasSiginupModel!));
    }).catchError((error) {
      print(error.toString());
      emit(PersonSignUpErrorState());
    });
  }
}
