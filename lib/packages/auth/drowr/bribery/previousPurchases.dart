import 'package:ee/packages/auth/drowr/bribery/show_screen.dart';
import 'package:flutter/material.dart';

import '../../../compontes/componets.dart';
import '../../../constants/constants.dart';
import '../../../style/colors.dart';

class PreviousPurchasesScreen extends StatelessWidget {
  const PreviousPurchasesScreen({Key? key}) : super(key: key);

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
          leadingOnPresse: () {}),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Container(
            width: double.infinity,
            color: myFavColor,
            height: size.height * 0.13,
            child: Center(
              child: Text(
                language(context).previousPurchases,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.65,
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return builedRom(context: context, size: size);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          thickness: 3,
                        );
                      },
                      itemCount: 10),
                ),
              ],
            ),
          ),
          Spacer(),
          MaterialButton(
            minWidth: double.infinity,
            height: 50,
            color: myFavColor,
            onPressed: () {},
            child: Text(
              language(context).addNew,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ]),
      ),
    );
  }
}

Widget builedRom({
  required context,
  required Size size,
}) =>
    Container(
      width: double.infinity,
      height: size.height * 0.162,
      child: Column(children: [
        Row(
          children: [
            Text(
              language(context).dateApplication,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 13),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '1/12/2022',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
            Text(
              language(context).correspondent,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 13),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'بشير احمد',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Text(
              language(context).sentTo,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 13),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'احمد محمد',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
            Text(
              language(context).numberArticles,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 13),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '115',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
            Text(
              language(context).casee,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 13),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'تم الشراء',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Spacer(),
            Container(
              height: 30,
              width: 80,
              child: MaterialButton(
                minWidth: 60,
                height: 32,
                color: myFavColor1,
                onPressed: () {
                  navPush(context, ShowScreen());
                },
                child: Text(
                  language(context).show,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 11),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 30,
              width: 80,
              child: MaterialButton(
                minWidth: 60,
                height: 32,
                color: myFavColor2,
                onPressed: () {},
                child: Text(
                  language(context).update,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 11),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 30,
              width: 80,
              child: MaterialButton(
                minWidth: 30,
                height: 32,
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  language(context).delete,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 11),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 32,
              child: MaterialButton(
                minWidth: 30,
                height: 32,
                color: myFavColor,
                onPressed: () {},
                child: Text(
                  language(context).copyrequest,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 9),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
        Spacer(),
      ]),
    );
