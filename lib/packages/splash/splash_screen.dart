import 'package:ee/packages/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../auth/login_screen.dart';
import '../compontes/componets.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3))
        .then((value) => {navRemoveUntil(context, LoginScreen())});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: myFavColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'جرس',
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 30),
            ),
            // SvgPicture.asset(
            //   'assets/images/jarasappicon.svg',
            //   height: 120,
            //   width: 120,
            // ),
            Image(
              image: AssetImage('assets/images/jaras.png'),
              height: 120,
              width: 120,
            ),
            Text(
              'Jaras',
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 30),
            ),
          ],
        ),
      ]),
    );
  }
}
