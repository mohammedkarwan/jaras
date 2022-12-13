import 'package:bloc/bloc.dart';
import 'package:ee/packages/constants/bloc_ob_server.dart';
import 'package:ee/packages/constants/constants.dart';
import 'package:ee/packages/constants/shared_pref_key.dart';
import 'package:ee/packages/helper/cache_helper.dart';
import 'package:ee/packages/helper/dio_helper.dart';
import 'package:ee/packages/lang/lang_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'ff.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  await DioHelper.init();
  chooseLang = await CacheHelper.getData(key: chooseLangKey);
  defaultLangData = await CacheHelper.getData(key: defaultLangKey) ?? 'en';
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
          create: (BuildContext context) => LanguageCubit(),
        ),
      ],
      child: BlocBuilder<LanguageCubit, Locale?>(
        builder: (context, lang) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const ff(),
            locale: lang,
          );
        },
      ),
    );
  }
}
