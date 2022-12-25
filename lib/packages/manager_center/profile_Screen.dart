import 'package:ee/packages/compontes/componets.dart';
import 'package:ee/packages/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: defaultAppBar(
          context: context,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: CircleAvatar(
                  backgroundColor: myFavColor2,
                  radius: 16,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: myFavColor,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: myFavColor2,
                      ),
                    ),
                  ),
                ))
          ],
          leadingOnPresse: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            color: myFavColor,
            height: size.height * 0.22,
            child: Center(
                child: Text(
              language(context).arithmetic,
              style: Theme.of(context).textTheme.subtitle2,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                builedText(
                    context: context,
                    name1: language(context).thenameIsInArabic,
                    nam2: 'محمد احمد'),
                builedText(
                    context: context,
                    name1: language(context).theNameiIsInEnglish,
                    nam2: 'Mohammed Ahmed'),
                builedText(
                    context: context,
                    name1: language(context).email,
                    nam2: 'MohammedKarwan@gmail.com'),
                builedText(
                    context: context,
                    name1: language(context).telephoneNumber,
                    nam2: '+9728557858'),
                builedText(
                    context: context,
                    name1: language(context).theState,
                    nam2: 'الامرات المتحدة'),
                builedText(
                    context: context,
                    name1: language(context).theNameiIsInEnglish,
                    nam2: 'Mohammed Ahmed'),
                builedText(
                    context: context,
                    name1: language(context).subtype,
                    nam2: 'افراد'),
                builedText(
                    context: context,
                    name1: language(context).userCategory,
                    nam2: 'فرد'),
                builedText(
                    context: context,
                    name1: language(context).preferredLanguage,
                    nam2: 'العربية'),
                builedText(
                    context: context,
                    name1: language(context).accesscode,
                    nam2: '********'),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          builedContanerBotton(
              context: context,
              name: "${language(context).update}",
              onTap: () {})
        ]),
      ),
    );
  }
}

Widget builedText({
  required context,
  required String name1,
  required String nam2,
}) =>
    Container(
      height: 40,
      child: Row(
        children: [
          Text(
            name1,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: myFavColor, fontSize: 14),
          ),
          Expanded(
            child: Text(
              nam2,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: myFavColor, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
