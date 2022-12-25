import 'package:ee/packages/auth/account_anIndividual.dart';
import 'package:ee/packages/style/colors.dart';
import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import 'account_foundation.dart';

class RegssterScreen extends StatelessWidget {
  const RegssterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        buildApper(size, context, () {}, () {}),
        SizedBox(
          height: size.height * 0.2,
        ),
        Text(
          language(context).choseAccount,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: myFavColor, fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                navPush(context, AccountFoundation());
              },
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      navPush(context, AccountFoundation());
                    },
                    child: Icon(
                      Icons.home_work_outlined,
                      size: 60,
                      color: myFavColor,
                    ),
                  ),
                  Text(
                    language(context).establishment,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: myFavColor,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                navPush(context, AccountanIndividual());
              },
              child: Column(
                children: [
                  Icon(
                    size: 60,
                    Icons.person_outline,
                    color: myFavColor,
                  ),
                  Text(
                    language(context).anIndividual,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: myFavColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        MaterialButton(
          minWidth: 200,
          height: 38,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          child: Text(
            language(context).iHaveAnaccount,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          color: myFavColor,
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        buildImag(),
      ])),
    );
  }
}
