import 'package:ee/packages/manager_center/main_screen.dart';
import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class AccountanIndividual extends StatelessWidget {
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
                  height: 5,
                ),
                textAndTextFromFiled(context, language(context).userCategory,
                    (value) {
                  if (value!.isEmpty) {
                    return language(context).pleaseEnterSomeText;
                  } else
                    return null;
                }, user),
                SizedBox(
                  height: 5,
                ),
                textAndTextFromFiled(
                  context,
                  language(context).preferredLanguage,
                  (value) {
                    if (value!.isEmpty) {
                      return language(context).pleaseEnterSomeText;
                    } else
                      return null;
                  },
                  lanFav,
                ),
                SizedBox(
                  height: 5,
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
                SizedBox(
                  height: size.height * 0.1,
                ),
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
