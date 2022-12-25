import 'package:ee/packages/style/colors.dart';
import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';

class LinkedAccountScreen extends StatelessWidget {
  const LinkedAccountScreen({Key? key}) : super(key: key);

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
            language(context).linkedaccounts,
            style: Theme.of(context).textTheme.subtitle2,
          )),
        ),
        Container(
          width: double.infinity,
          color: myFavColor1,
          height: size.height * 0.17,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Spacer(),
              Text(
                language(context).correspondents,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: myFavColor),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 3,
                color: myFavColor2,
              ),
              Spacer(),
              Text(
                language(context).individuals,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: myFavColor),
              ),
              Spacer(),
            ]),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 3,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Spacer(),
              Text(
                '1/7',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: myFavColor),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              MaterialButton(
                height: 20,
                minWidth: 20,
                color: myFavColor,
                onPressed: () {},
                child: Text(language(context).newConnect,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 14)),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Spacer(),
              Container(
                height: 40,
                width: 3,
                color: myFavColor2,
              ),
              Spacer(),
              Text(
                '1/7',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: myFavColor),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              MaterialButton(
                height: 20,
                minWidth: 20,
                color: myFavColor,
                onPressed: () {},
                child: Text(language(context).newConnect,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 14)),
              ),
              Spacer(),
            ]),
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Text(
            language(context).usercode,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            'j15',
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
          ),
          Spacer(),
          Text(
            language(context).name,
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
            language(context).classs,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            language(context).anIndividual,
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
        ]),
        Divider(
          thickness: 3,
        ),
        Row(children: [
          Text(
            language(context).usercode,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            'j15',
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 11),
          ),
          Spacer(),
          Text(
            language(context).name,
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
            language(context).classs,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.blue, fontSize: 11),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            language(context).reporter,
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
        ]),
        Divider(thickness: 3),
        Spacer(),
        Container(
          color: myFavColor,
          height: 60,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'بامكانك زيادة العدد المسمح به من المراسلين والافراد بشراءاضافات جديدة من موقع كودر',
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 8),
            ),
            Text(
              'www.coder',
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 12),
            ),
          ]),
        ),
      ]),
    );
  }
}
