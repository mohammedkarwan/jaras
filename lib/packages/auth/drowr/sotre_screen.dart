import 'package:flutter/material.dart';

import '../../compontes/componets.dart';
import '../../constants/constants.dart';
import '../../style/colors.dart';

class StoreScreen extends StatefulWidget {
  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  int countr = 0;
  int countr1 = 0;
  int countr2 = 0;
  int countr3 = 0;
  int countr4 = 0;
  int countr5 = 0;
  int countr6 = 0;
  int countr7 = 0;
  int countr8 = 0;

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
          height: size.height * 0.18,
          child: Column(children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              language(context).thestore,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              language(context).theLastMmaterials,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ]),
        ),
        Container(
          width: double.infinity,
          height: size.height * 0.08,
          child: Row(children: [
            Spacer(),
            Text(
              language(context).dateOfpurchase,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 12),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '1/12/2022',
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
            ),
            Spacer(),
            Text(
              language(context).lastInventorywasventoryDate,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 12),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '1/12/2022',
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
            ),
            Spacer(),
            Text(
              language(context).fromBefore,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 12),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '1/12/2022',
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
            ),
            Spacer(),
          ]),
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
                language(context).buyingsucceeded,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: myFavColor, fontSize: 12),
              ),
              Spacer(),
              Text(
                language(context).unit,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: myFavColor, fontSize: 12),
              ),
              Spacer(),
              Text(
                language(context).residual,
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
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
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
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Text(
                      language(context).kilo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: myFavColor1),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  countr++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              countr.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (countr > 0 || countr == 0) {
                                  setState(() {
                                    countr--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Text(
                      language(context).kilo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: myFavColor1),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  countr1++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              countr1.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (countr1 > 0 || countr1 == 0) {
                                  setState(() {
                                    countr1--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Text(
                      language(context).kilo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: myFavColor1),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  countr2++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              countr2.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (countr2 > 0 || countr2 == 0) {
                                  setState(() {
                                    countr2--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Text(
                      language(context).kilo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: myFavColor1),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  countr3++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              countr3.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (countr3 > 0 || countr3 == 0) {
                                  setState(() {
                                    countr3--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Text(
                      language(context).kilo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: myFavColor1),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  countr4++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              countr4.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (countr4 > 0 || countr4 == 0) {
                                  setState(() {
                                    countr4--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
                      '5',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Text(
                      language(context).kilo,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 13),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: myFavColor1),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  countr5++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: Text(
                              countr5.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (countr5 > 0 || countr5 == 0) {
                                  setState(() {
                                    countr5--;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 16,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
      height: size.height * 0.06,
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
