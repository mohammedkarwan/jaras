import 'package:ee/packages/auth/person/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../compontes/componets.dart';
import '../../constants/constants.dart';
import '../../style/colors.dart';
import '../login_screen.dart';
import 'cubite.dart';

class AccountanIndividual extends StatefulWidget {
  @override
  State<AccountanIndividual> createState() => _AccountanIndividualState();
}

String _gender = 'normal';
String _Lang = 'ar';

class _AccountanIndividualState extends State<AccountanIndividual> {
  var nameArbic = TextEditingController();

  var nameEnglash = TextEditingController();

  var nuberphone = TextEditingController();

  var saty = TextEditingController();

  var subtyp = TextEditingController();

  var lanFav = TextEditingController();

  var accessCode = TextEditingController();

  var configerAccessCode = TextEditingController();
  var emailConttroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<PersonSiginUpCubit, PersonSiginUpState>(
        builder: (BuildContext context, state) {
      var cubite = PersonSiginUpCubit.get(context);
      return Scaffold(
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(children: [
            buildApper(size, context, () {}, () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  language(context).newRegistration,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: myFavColor, fontSize: 18),
                ),
                Text(
                  '-',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: myFavColor, fontSize: 18),
                ),
                Text(
                  language(context).individualAccount,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: myFavColor, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 10),
              child: Column(
                children: [
                  textAndTextFromFiled(
                      context, language(context).thenameIsInArabic, (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeText;
                    } else
                      return null;
                  }, nameArbic),
                  SizedBox(
                    height: 5,
                  ),
                  textAndTextFromFiled(
                      context, language(context).theNameiIsInEnglish, (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeText;
                    } else
                      return null;
                  }, nameEnglash),
                  SizedBox(
                    height: 5,
                  ),
                  textAndTextFromFiled(context, language(context).email,
                      (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeText;
                    } else
                      return null;
                  }, emailConttroller),
                  SizedBox(
                    height: 5,
                  ),
                  textAndTextFromFiled(
                    context,
                    language(context).telephoneNumber,
                    (value) {
                      if (value!.isEmpty) {
                        return language(context).pleaseEnterSomeNumber;
                      } else if (value.length < 8) {
                        return language(context).phonenumbermustbeatleast;
                      } else
                        return null;
                    },
                    nuberphone,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  textAndTextFromFiled(
                    context,
                    language(context).theState,
                    (value) {
                      if (value!.isEmpty) {
                        return language(context).pleaseEnterSomeText;
                      } else
                        return null;
                    },
                    saty,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: myFavColor)),
                    child: Row(
                      children: [
                        Text(
                          language(context).userCategory,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: myFavColor, fontSize: 13),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Material(
                                  color: Colors.transparent,
                                  child: RadioListTile<String>(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      language(context).normalUser,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(fontSize: 13),
                                    ),
                                    value: 'normal',
                                    groupValue: _gender,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        setState(() {
                                          _gender = value;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                child: Material(
                                  color: Colors.transparent,
                                  child: RadioListTile<String>(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      language(context).correspondent,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(fontSize: 13),
                                    ),
                                    value: 'reporter',
                                    groupValue: _gender,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        setState(() {
                                          _gender = value;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: myFavColor)),
                    child: Row(
                      children: [
                        Text(
                          language(context).preferredLanguage,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: myFavColor, fontSize: 13),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Material(
                                  color: Colors.transparent,
                                  child: RadioListTile<String>(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      language(context).arabic,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(fontSize: 13),
                                    ),
                                    value: 'ar',
                                    groupValue: _Lang,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        setState(() {
                                          _Lang = value;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                child: Material(
                                  color: Colors.transparent,
                                  child: RadioListTile<String>(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      language(context).einglish,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(fontSize: 13),
                                    ),
                                    value: 'en',
                                    groupValue: _Lang,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        setState(() {
                                          _Lang = value;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  textAndTextFromFiled(context, language(context).accesscode,
                      (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeNumber;
                    } else if (value.length < 4) {
                      return language(context).passwoerd;
                    } else
                      return null;
                  }, accessCode),
                  SizedBox(
                    height: 5,
                  ),
                  textAndTextFromFiled(
                      context, language(context).confirmAccessCode, (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeNumber;
                    } else if (value != accessCode.text) {
                      return language(context)
                          .accesscodenotequaltotheaccesscode;
                    } else
                      return null;
                  }, configerAccessCode),
                ],
              ),
            ),
            state is PersonSignUpLoadingState
                ? Center(child: defaultCircleIndicator())
                : MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        cubite.signUpData(
                            user_type: _gender.toString(),
                            name_ar: nameArbic.text,
                            name_en: nameEnglash.text,
                            phone: nuberphone.text,
                            email: emailConttroller.text,
                            password: accessCode.text,
                            language: _Lang.toString());
                      }

                      // navRemoveUntil(context, MainScreen());
                    },
                    child: Text(
                      language(context).registration,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    color: myFavColor,
                  ),
          ]),
        )),
      );
    }, listener: (context, state) {
      if (state is PersonSignUpSuccessState) {
        if (state.jarasSiginupModel.error == false) {
          defaultSnackBar(
            text: state.jarasSiginupModel.message!,
            state: SnackBarState.success,
            context: context,
          );

          navPush(context, LoginScreen());
        } else {
          defaultSnackBar(
            text: state.jarasSiginupModel.message!,
            state: SnackBarState.error,
            context: context,
          );
        }
      } else if (state is PersonSignUpErrorState) {
        defaultSnackBar(
          text: ' The email has already been taken',
          state: SnackBarState.error,
          context: context,
        );
      }
    });
  }
}
