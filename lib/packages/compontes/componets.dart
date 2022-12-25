import 'package:ee/packages/auth/change_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';
import '../style/colors.dart';

Widget buildImag({
  double? height,
  double? width,
}) =>
    Image.asset(
      'assets/images/logo.png',
      height: height ?? 120,
      width: width ?? 120,
    );
Widget buildApper(Size size, context, void Function()? ledingOnPressed,
        void Function()? acionsOnPressed) =>
    Container(
      height: size.height * 0.13,
      width: double.infinity,
      decoration: BoxDecoration(
          color: myFavColor,
          borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(size.height, size.width * .46))),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: IconButton(
                    onPressed: ledingOnPressed,
                    icon: Icon(Icons.menu),
                    color: myFavColor2,
                    iconSize: 30),
              ),
              Spacer(),
              Text(
                'جرس',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 18),
              ),
              Image.asset(
                'assets/images/jaras.png',
                height: 60,
                width: 60,
              ),
              Text(
                'Jaras',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 18),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    size: 30,
                    color: myFavColor2,
                  ))
            ],
          ),
        ],
      ),
    );

Future navRemoveUntil(context, Widget widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

Future navPush(context, Widget widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

Widget textAndTextFromFiled(
        context,
        String text,
        String? Function(String?)? validator,
        TextEditingController? controller) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: myFavColor, fontSize: 13),
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              height: 45,
              width: 210,
              child: TextFormField(
                controller: controller,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  filled: true,
                  focusColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                validator: validator,
              ),
            ),
          ),
        ),
      ],
    );
Widget apparContanier({
  required Size size,
  required context,
  required String accountName,
  required String account,
  required String date,
}) =>
    Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * 0.26,
          child: Column(
            children: [
              Container(
                color: myFavColor,
                height: size.height * 0.25,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(children: [
                                Text(
                                  "${language(context).welcome}: ",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                  accountName,
                                  style: Theme.of(context).textTheme.subtitle2,
                                )
                              ]),
                              Text(
                                account,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: myFavColor2),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                child: SvgPicture.asset(
                                  'assets/images/svg/40.svg',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                minWidth: 80,
                                height: 10,
                                color: myFavColor2,
                                onPressed: () {
                                  navPush(context, ChangeImageScreen());
                                },
                                child: Text(
                                  language(context).change,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          fontSize: 12, color: myFavColor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: 240,
          color: myFavColor2,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Spacer(),
            Icon(Icons.date_range_outlined),
            Text(
              "${language(context).requeststoday}  ",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: myFavColor, fontSize: 15),
            ),
            Text(
              date,
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 15),
            ),
            Spacer(),
          ]),
        )
      ],
    );

PreferredSizeWidget defaultAppBar({
  required context,
  List<Widget>? actions,
  required void Function()? leadingOnPresse,
}) =>
    AppBar(
        backgroundColor: myFavColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30,
            color: myFavColor2,
          ),
          onPressed: leadingOnPresse,
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'جرس',
            style:
                Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18),
          ),
          Image.asset(
            'assets/images/jaras.png',
            height: 60,
            width: 60,
          ),
          Text(
            'Jaras',
            style:
                Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 18),
          ),
        ]),
        centerTitle: true,
        actions: actions);

Widget textIcon({
  required context,
  required String time,
  required IconData iconTime,
  required String order,
  required IconData orderIcon,
  required String name,
  required IconData nameIcon,
  required String itWasReceived,
  required IconData itWasReceivedIcon,
}) =>
    Row(
      children: [
        Icon(
          iconTime,
          size: 15,
          color: myFavColor,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          time,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
        ),
        Spacer(),
        Icon(
          orderIcon,
          size: 15,
          color: myFavColor,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          order,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Spacer(),
        Icon(
          nameIcon,
          size: 15,
          color: myFavColor,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Spacer(),
        Icon(
          color: myFavColor,
          itWasReceivedIcon,
          size: 15,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          itWasReceived,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );

Widget bulidTwoBottons({
  required Size size,
  required context,
  required String botton1,
  required String botton2,
  required String rateme,
  required void Function()? onPressed1,
  required void Function()? onPressed2,
  required void Function()? onPressed3,
}) =>
    Container(
      height: size.height * 0.05,
      child: Row(
        children: [
          MaterialButton(
            height: 30,
            minWidth: 20,
            color: myFavColor1,
            onPressed: onPressed1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: BorderSide(
                  color: Colors.grey.shade600,
                )),
            child: Text(
              botton1,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 14),
            ),
          ),
          Spacer(),
          MaterialButton(
            height: 32,
            minWidth: 60,
            color: Colors.grey.shade500,
            onPressed: onPressed2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(color: Colors.grey.shade600),
            ),
            child: Text(
              botton2,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 14),
            ),
          ),
          Spacer(),
          Text(
            rateme,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.deepPurple, fontSize: 18),
          ),
          Image.asset(
            'assets/images/rate-me.png',
            width: 50,
            height: 50,
          )
        ],
      ),
    );

Widget bulidBottons({
  required Size size,
  required context,
  required String botton1,
  required String botton2,
  required String botton3,
  required String rateme,
  required void Function()? onPressed1,
  required void Function()? onPressed2,
  required void Function()? onPressed3,
}) =>
    Container(
      height: size.height * 0.05,
      child: Row(
        children: [
          MaterialButton(
            height: 30,
            minWidth: 20,
            color: myFavColor1,
            onPressed: onPressed1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: BorderSide(
                  color: Colors.grey.shade600,
                )),
            child: Text(
              botton1,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 9),
            ),
          ),
          Spacer(),
          MaterialButton(
            height: 32,
            minWidth: 60,
            color: Colors.grey.shade500,
            onPressed: onPressed2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(color: Colors.grey.shade600),
            ),
            child: Text(
              botton2,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 9),
            ),
          ),
          Spacer(),
          MaterialButton(
            height: 32,
            minWidth: 20,
            color: Colors.deepPurple,
            onPressed: onPressed3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(color: Colors.grey.shade600),
            ),
            child: Text(
              botton3,
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 9),
            ),
          ),
          Spacer(),
          Text(
            rateme,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.deepPurple, fontSize: 13),
          ),
          Image.asset(
            'assets/images/rate-me.png',
            width: 40,
            height: 40,
          )
        ],
      ),
    );
Widget builedContanerBotton({
  required context,
  required String name,
  required void Function()? onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        color: myFavColor,
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Spacer(),
            Text(
              name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Spacer(),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ]),
        ),
      ),
    );
