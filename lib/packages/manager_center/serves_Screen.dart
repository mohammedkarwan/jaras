import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class ServesScreen extends StatefulWidget {
  @override
  State<ServesScreen> createState() => _ServesScreenState();
}

enum Fruit { a, b, c, d, f, g }

Fruit? _fruit = Fruit.a;

class _ServesScreenState extends State<ServesScreen> {
  String _gender = 'M';

  bool iscolorgray = true;

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
          height: size.height * 0.1,
          child: Center(
              child: Text(
            language(context).serviceSettings,
            style: Theme.of(context).textTheme.subtitle2,
          )),
        ),
        buledTable(
            size: size,
            context: context,
            BacgroundContaner: myFavColor2,
            BacgroundRow: myFavColor1),
        buledTable(
            size: size,
            context: context,
            BacgroundContaner: myFavColor,
            BacgroundRow: myFavColor2),
        SizedBox(height: 8),
        Container(
          height: size.height * 0.05,
          child: Row(
            children: [
              Spacer(),
              Text(
                language(context).picture,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: myFavColor, fontSize: 12),
              ),
              Spacer(),
              Text(
                language(context).arabicType,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: myFavColor, fontSize: 12),
              ),
              Spacer(),
              Text(
                language(context).englishType,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: myFavColor, fontSize: 12),
              ),
              Spacer(),
              Text(
                language(context).activation,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: myFavColor, fontSize: 12),
              ),
              Spacer(),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: size.height * 0.05,
          child: Row(
            children: [
              Spacer(),
              Image(image: AssetImage('assets/images/sapon.png')),
              Spacer(),
              Text(
                'صابون غسيل',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Text(
                'Laundry soap',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Radio<Fruit>(
                value: Fruit.a,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
              Spacer(),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: size.height * 0.05,
          child: Row(
            children: [
              Spacer(),
              Image(image: AssetImage('assets/images/sapon.png')),
              Spacer(),
              Text(
                'صابون غسيل',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Text(
                'Laundry soap',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Radio<Fruit>(
                value: Fruit.b,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
              Spacer(),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: size.height * 0.05,
          child: Row(
            children: [
              Spacer(),
              Image(image: AssetImage('assets/images/sapon.png')),
              Spacer(),
              Text(
                'صابون غسيل',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Text(
                'Laundry soap',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Radio<Fruit>(
                value: Fruit.c,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
              Spacer(),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: size.height * 0.05,
          child: Row(
            children: [
              Spacer(),
              Image(image: AssetImage('assets/images/sapon.png')),
              Spacer(),
              Text(
                'صابون غسيل',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Text(
                'Laundry soap',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Radio<Fruit>(
                value: Fruit.d,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
              Spacer(),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: size.height * 0.05,
          child: Row(
            children: [
              Spacer(),
              Image(image: AssetImage('assets/images/sapon.png')),
              Spacer(),
              Text(
                'صابون غسيل',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Text(
                'Laundry soap',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 13),
              ),
              Spacer(),
              Radio<Fruit>(
                value: Fruit.f,
                groupValue: _fruit,
                onChanged: (Fruit? value) {
                  setState(() {
                    _fruit = value;
                  });
                },
              ),
              Spacer(),
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
            language(context).addition,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        )
      ]),
    );
  }
}

Widget buledTable({
  required Size size,
  required context,
  required Color BacgroundContaner,
  required Color BacgroundRow,
}) =>
    Container(
      color: BacgroundContaner,
      width: double.infinity,
      height: size.height * 0.09,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              color: BacgroundRow,
              child: Center(
                  child: Text(
                language(context).clothes,
                style: Theme.of(context).textTheme.subtitle2,
              )),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: BacgroundRow,
              child: Center(
                  child: Text(
                language(context).clothes,
                style: Theme.of(context).textTheme.subtitle2,
              )),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: BacgroundRow,
              child: Center(
                  child: Text(
                language(context).clothes,
                style: Theme.of(context).textTheme.subtitle2,
              )),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: BacgroundRow,
              child: Center(
                  child: Text(
                language(context).clothes,
                style: Theme.of(context).textTheme.subtitle2,
              )),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              color: BacgroundRow,
              child: Center(
                  child: Text(
                language(context).clothes,
                style: Theme.of(context).textTheme.subtitle2,
              )),
            ),
          ),
        ],
      ),
    );
