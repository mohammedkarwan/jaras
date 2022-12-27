import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class EmployScreen extends StatelessWidget {
  const EmployScreen({Key? key}) : super(key: key);

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
      body: Column(children: [
        Container(
          color: myFavColor,
          height: size.height * 0.2,
          width: double.infinity,
          child: Center(
            child: Text(
              language(context).employees,
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
                height: size.height * 0.59,
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
              language(context).employeeode,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '15l',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
            Text(
              language(context).name,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'غرفة كبار الشخصيات',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              language(context).management,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'ادارة تقنية المعلومات',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.black, fontSize: 12),
            ),
            Spacer(),
            Text(
              language(context).section,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: myFavColor, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'الدعم الفني',
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
              child: MaterialButton(
                minWidth: 30,
                height: 32,
                color: myFavColor,
                onPressed: () {},
                child: Text(
                  language(context).correspondents,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 9),
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
                color: myFavColor1,
                onPressed: () {},
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
                minWidth: 30,
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
          ],
        ),
        Spacer(),
      ]),
    );
