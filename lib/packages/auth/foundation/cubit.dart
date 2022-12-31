import 'package:bloc/bloc.dart';
import 'package:ee/packages/auth/foundation/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helper/dio_helper.dart';
import '../../model/sigup_foundation.dart';

class FoundaionSiginUpCubit extends Cubit<FoundaionSiginUpState> {
  FoundaionSiginUpCubit() : super(FoundaionInialState());
  JarasSiginupFoundation? jarasSiginupFoundation;
  static FoundaionSiginUpCubit get(context) => BlocProvider.of(context);
  void signUpData({
    required String company_name_ar,
    required String company_name_en,
    required String name_ar,
    required String name_en,
    required String phone,
    required String email,
    required String password,
    required String language,
  }) {
    emit(FoundaionSignUpLoadingState());
    DioHelper.postData(url: 'sign_up/company', data: {
      'name_ar': name_ar,
      'name_en': name_en,
      'company_name_ar': company_name_ar,
      'company_name_en': company_name_en,
      'phone': phone,
      'email': email,
      'password': password,
      'country_id': 20,
      'language': language,
    }).then((value) {
      jarasSiginupFoundation = JarasSiginupFoundation.fromJson(value.data);

      print(jarasSiginupFoundation!.message);
      emit(FoundaionSignUpSuccessState(jarasSiginupFoundation!));
    }).catchError((error) {
      print(error.toString());
      emit(FoundaionSignUpErrorState());
    });
  }
}
