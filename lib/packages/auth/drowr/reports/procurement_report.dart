import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../compontes/componets.dart';
import '../../../constants/constants.dart';
import '../../../style/colors.dart';

class ProcurementReportScreeen extends StatelessWidget {
  const ProcurementReportScreeen({Key? key}) : super(key: key);

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
                  Icons.logout,
                  size: 30,
                  color: myFavColor2,
                ))
          ],
          leadingOnPresse: () {}),
      body: Column(children: [
        Container(
          height: size.height * 0.28,
          width: double.infinity,
          color: myFavColor,
          child: Column(children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              language(context).procurementReport,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Expanded(
              child: Row(children: [
                Spacer(),
                defultContatner(
                    size: size,
                    context: context,
                    widget: Icon(
                      Icons.date_range_outlined,
                      size: 16,
                    ),
                    text1: language(context).from,
                    text2: '10:0:0Am',
                    text3: '2020/8/9'),
                Spacer(),
                defultContatner(
                    size: size,
                    context: context,
                    widget: Icon(
                      Icons.date_range_outlined,
                      size: 16,
                    ),
                    text1: language(context).toMe,
                    text2: '10:0:0Am',
                    text3: '2020/8/9'),
                Spacer(),
              ]),
            ),
            Expanded(
              child: Row(children: [
                Spacer(),
                defultContatnerTowTex(
                  size: size,
                  context: context,
                  widget: Image.asset(
                    'assets/images/00.png',
                    width: 40,
                    height: 40,
                  ),
                  text1: language(context).required,
                  text2: 'شاي',
                ),
                Spacer(),
                defultContatnerTowTex(
                  size: size,
                  context: context,
                  widget: Icon(
                    Icons.sensor_occupied_outlined,
                    size: 16,
                  ),
                  text1: language(context).correspondent,
                  text2: 'احمد محمد',
                ),
                Spacer(),
              ]),
            ),
            Expanded(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                defultContatnerTowTex(
                  size: size,
                  context: context,
                  widget: SvgPicture.asset(
                    'assets/images/svg/40.svg',
                    height: 40,
                    width: 40,
                  ),
                  text1: language(context).requester,
                  text2: 'محمد احمدٍ',
                ),
              ]),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Row(children: [
          Spacer(),
          Text(
            language(context).history,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          SizedBox(width: 2),
          Text(
            language(context).time,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          Spacer(),
          Text(
            language(context).correspondent,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          Spacer(),
          Text(
            language(context).requester,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          Spacer(),
          Text(
            language(context).subject,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          Spacer(),
          Text(
            language(context).quantity,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          Spacer(),
          Text(
            language(context).evaluation,
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
          Spacer(),
        ]),
        // Table(
        //   children: [
        //     TableRow(children: [
        //       Text(
        //         language(context).history,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //       Text(
        //         language(context).time,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //       Text(
        //         language(context).correspondent,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //       Text(
        //         language(context).requester,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //       Text(
        //         language(context).subject,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //       Text(
        //         language(context).quantity,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //       Text(
        //         language(context).evaluation,
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 11),
        //       ),
        //     ]),
        //   ],
        // ),
        Divider(
          indent: 5,
          endIndent: 5,
          thickness: 3,
        ),
        // Table(
        //   children: [
        //     TableRow(children: [
        //       Text(
        //         '1/2/2022',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle2!
        //             .copyWith(color: myFavColor, fontSize: 9),
        //       ),
        //       Text(
        //         '10:0:0Am',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 9),
        //       ),
        //       Text(
        //         'محمد احمد',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 9),
        //       ),
        //       Text(
        //         'خالد محمد',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 9),
        //       ),
        //       Text(
        //         'جرس',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 9),
        //       ),
        //       Text(
        //         '5',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 9),
        //       ),
        //       Text(
        //         '3',
        //         style: Theme.of(context)
        //             .textTheme
        //             .subtitle1!
        //             .copyWith(fontSize: 9),
        //       ),
        //     ]),
        //   ],
        // ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return textRow(
                    context: context,
                    Date: '1/2/2022',
                    Time: '10.0.0Am',
                    name1: 'محمد احمد',
                    name2: 'محمد احمد',
                    name3: 'جرس',
                    name4: '5',
                    name5: '3');
              },
              separatorBuilder: (context, inex) {
                return Divider(
                  color: Colors.grey,
                );
              },
              itemCount: 15),
        ),

        Container(
          color: myFavColor,
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Row(children: [
              Text(
                language(context).numberEecords,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 11),
              ),
              Text(
                ':10',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 11),
              ),
              Spacer(),
              MaterialButton(
                height: 30,
                color: myFavColor2,
                onPressed: () {},
                child: Text(
                  language(context).sendReport,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 11),
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}

Widget defultContatner({
  required Size size,
  required context,
  required Widget widget,
  required String text1,
  required String text2,
  required String text3,
}) =>
    Container(
      height: 30,
      width: size.width * 0.43,
      color: myFavColor2,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        widget,
        SizedBox(
          width: 2,
        ),
        Text(
          text1,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: myFavColor, fontSize: 12),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          text2,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 10),
        ),
        Spacer(),
        Text(
          text3,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 10),
        ),
        Spacer(),
      ]),
    );

Widget defultContatnerTowTex({
  required Size size,
  required context,
  required Widget widget,
  required String text1,
  required String text2,
}) =>
    Container(
      height: 30,
      width: size.width * 0.43,
      color: myFavColor2,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        widget,
        SizedBox(
          width: 2,
        ),
        Text(
          text1,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: myFavColor, fontSize: 12),
        ),
        SizedBox(
          width: 2,
        ),
        Spacer(),
        Text(
          text2,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 10),
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ]),
    );

Widget textRow({
  required context,
  required String Date,
  required String Time,
  required String name1,
  required String name2,
  required String name3,
  required String name4,
  required String name5,
}) =>
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          Text(
            Date,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 8),
          ),
          SizedBox(width: 2),
          Text(
            Time,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 8),
          ),
        ],
      ),
      Text(
        name1,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 9),
      ),
      Text(
        name2,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 9),
      ),
      Text(
        name3,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 9),
      ),
      Text(
        name4,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 9),
      ),
      Text(
        name5,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 9),
      ),
      SizedBox(
        width: 5,
      ),
    ]);
