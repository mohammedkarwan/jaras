import 'package:bloc/bloc.dart';
import 'package:ee/packages/auth/cubit/states/states.dart';
import 'package:ee/packages/model/login_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_point.dart';
import '../../../constants/shared_pref_key.dart';
import '../../../helper/cache_helper.dart';
import '../../../helper/dio_helper.dart';
import '../../../lang/lang_cubit.dart';

class LogingCubit extends Cubit<LoginStates> {
  LogingCubit() : super(LoginInialState());

  static LogingCubit get(context) => BlocProvider.of(context);
  JarasLoginData? jarasLoginData;

  bool isLang = false;
  dynamic dropValue = chooseLang;
  Future<void> changeLange(context) async {
    isLang = !isLang;
    print(isLang && dropValue == 'arabic');
    emit(LoginChangeLangeLodingState());
    if (isLang == false) {
      LanguageCubit.get(context).changeLang(context, 'ar');
      dropValue = 'arabic';
    } else {
      LanguageCubit.get(context).changeLang(context, 'en');
      dropValue = 'english';
    }
    print(dropValue + '//////////////////////');

    CacheHelper.setData(key: chooseLangKey, value: dropValue);

    defaultLangData = await CacheHelper.getData(key: defaultLangKey);

    defaultLangData = await CacheHelper.getData(key: defaultLangKey);
    emit(LoginChangeLangeSuccessState());
  }

  bool isLogin = true;
  void loginData({
    required String phone,
    required String phone_code,
  }) {
    emit(JarasLoginLoadingState());

    DioHelper.postData(url: login, data: {
      'phone': phone,
      'password': phone_code,
    }).then((value) {
      isLogin = true;
      print(value.data);
      jarasLoginData = JarasLoginData.fromJson(value.data);

      print(jarasLoginData!.message);
      emit(JarasLoginSuccessState(jarasLoginData!));
    }).catchError((error) {
      isLogin = false;
      print('isLoginisLoginisLoginisLogin${isLogin}');
      print(error.toString());
      emit(JarasLoginErrorState());
    });
  }


  getToken(context) async {
    token = await CacheHelper.getData(key: token);
    emit(JarasLoginGetToken());
  }
}
