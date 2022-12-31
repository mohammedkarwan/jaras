import 'package:bloc/bloc.dart';
import 'package:ee/packages/auth/cubit/cubit/cubit.dart';
import 'package:ee/packages/auth/foundation/cubit.dart';
import 'package:ee/packages/auth/person/cubite.dart';
import 'package:ee/packages/constants/bloc_ob_server.dart';
import 'package:ee/packages/constants/constants.dart';
import 'package:ee/packages/constants/shared_pref_key.dart';
import 'package:ee/packages/helper/cache_helper.dart';
import 'package:ee/packages/helper/dio_helper.dart';
import 'package:ee/packages/lang/lang_cubit.dart';
import 'package:ee/packages/splash/splash_screen.dart';
import 'package:ee/packages/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  await DioHelper.init();
  defaultLangData = await CacheHelper.getData(key: defaultLangKey) ?? 'ar';
  chooseLang = await CacheHelper.getData(key: chooseLangKey) ?? 'ar';
  print(chooseLang + 'chooseLangchooseLang');

  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FoundaionSiginUpCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => PersonSiginUpCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => LanguageCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => LogingCubit(),
        ),
      ],
      child: BlocBuilder<LanguageCubit, Locale?>(
        builder: (context, lang) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const SplachScreen(),
            theme: lightMode,
            themeMode: ThemeMode.light,
            locale: lang,
          );
        },
      ),
    );
  }
}
