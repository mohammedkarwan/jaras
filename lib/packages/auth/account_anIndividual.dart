import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../manager_center/main_screen.dart';
import '../style/colors.dart';

class AccountanIndividual extends StatefulWidget {
  @override
  State<AccountanIndividual> createState() => _AccountanIndividualState();
}

enum Fruit {
  a,
  b,
}

Fruit? _fruit = Fruit.a;

enum Lang {
  ar,
  en,
}

Lang? lang = Lang.ar;

class _AccountanIndividualState extends State<AccountanIndividual> {
  var nameArbic = TextEditingController();

  var nameEnglash = TextEditingController();

  var nuberphone = TextEditingController();

  var saty = TextEditingController();

  var subtyp = TextEditingController();

  var user = TextEditingController();

  var lanFav = TextEditingController();

  var accessCode = TextEditingController();

  var configerAccessCode = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                textAndTextFromFiled(
                  context,
                  language(context).telephoneNumber,
                  (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeNumber;
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
                textAndTextFromFiled(
                  context,
                  language(context).subtype,
                  (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeText;
                    } else
                      return null;
                  },
                  subtyp,
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
                        language(context).userCategory,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: myFavColor, fontSize: 13),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio<Fruit>(
                                value: Fruit.a,
                                groupValue: _fruit,
                                onChanged: (Fruit? value) {
                                  setState(() {
                                    _fruit = value;
                                  });
                                },
                              ),
                              Text(
                                language(context).normalUser,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 13),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio<Fruit>(
                                value: Fruit.b,
                                groupValue: _fruit,
                                onChanged: (Fruit? value) {
                                  setState(() {
                                    _fruit = value;
                                  });
                                },
                              ),
                              Text(
                                language(context).correspondent,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // textAndTextFromFiled(context, language(context).userCategory,
                //     (value) {
                //   if (value!.isEmpty) {
                //     return language(context).pleaseEnterSomeText;
                //   } else
                //     return null;
                // }, user),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Radio<Lang>(
                                value: Lang.ar,
                                groupValue: lang,
                                onChanged: (Lang? value) {
                                  setState(() {
                                    lang = value;
                                  });
                                },
                              ),
                              Text(
                                language(context).arabic,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 13),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Radio<Lang>(
                                value: Lang.en,
                                groupValue: lang,
                                onChanged: (Lang? value) {
                                  setState(() {
                                    lang = value;
                                  });
                                },
                              ),
                              Text(
                                language(context).einglish,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // textAndTextFromFiled(
                //   context,
                //   language(context).preferredLanguage,
                //   (value) {
                //     if (value!.isEmpty) {
                //       return language(context).pleaseEnterSomeText;
                //     } else
                //       return null;
                //   },
                //   lanFav,
                // ),
                SizedBox(
                  height: 10,
                ),
                textAndTextFromFiled(context, language(context).accesscode,
                    (value) {
                  if (value!.isEmpty) {
                    return language(context).pleaseEnterSomeNumber;
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
                  } else
                    return null;
                }, configerAccessCode),
              ],
            ),
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 50,
            onPressed: () {
              // if (_formKey.currentState!.validate()) {}
              navRemoveUntil(context, MainScreen());
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
  }
}
