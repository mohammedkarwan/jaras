import 'package:ee/packages/style/colors.dart';
import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';

class MyConccetScreen extends StatelessWidget {
  const MyConccetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: defaultAppBar(
          context: context,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  size: 30,
                  Icons.logout,
                  color: myFavColor2,
                ))
          ],
          leadingOnPresse: () {}),
      body: Column(children: [
        Container(
          width: double.infinity,
          color: myFavColor,
          height: size.height * 0.2,
          child: Center(
              child: Text(
            language(context).myconnections,
            style: Theme.of(context).textTheme.subtitle2,
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Spacer(),
          Text(
            language(context).nameofthemanager,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            'محمد احمد',
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
          ),
          Spacer(),
          Text(
            language(context).linkdate,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            '1/12/20022',
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
          ),
          Spacer(),
          MaterialButton(
            height: 27,
            minWidth: 20,
            color: Colors.red,
            onPressed: () {},
            child: Text(
              language(context).cancel,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 10),
            ),
          ),
          Spacer(),
        ]),
        Divider(
          thickness: 3,
        ),
        Row(children: [
          Spacer(),
          Text(
            language(context).nameofthemanager,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            'محمد احمد',
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
          ),
          Spacer(),
          Text(
            language(context).linkdate,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            '1/12/20022',
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
          ),
          Spacer(),
          MaterialButton(
            height: 27,
            minWidth: 20,
            color: Colors.green,
            onPressed: () {},
            child: Text(
              language(context).emphasis,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 10),
            ),
          ),
          Spacer(),
        ]),
        Divider(thickness: 3),
        Spacer(),
        Container(
          color: myFavColor,
          height: 60,
          width: double.infinity,
          child:
              Column(mainAxisAlignment: MainAxisAlignment.center, children: []),
        ),
      ]),
    );
  }
}
