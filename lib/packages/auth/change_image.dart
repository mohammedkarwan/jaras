import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class ChangeImageScreen extends StatelessWidget {
  const ChangeImageScreen({Key? key}) : super(key: key);

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
            language(context).changeProfilePicture,
            style: Theme.of(context).textTheme.subtitle2,
          )),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       child: SvgPicture.asset(
        //         'assets/images/svg/1.svg',
        //         height: 70,
        //         width: 70,
        //       ),
        //     ),
        //     Expanded(
        //       child: SvgPicture.asset(
        //         'assets/images/svg/1.svg',
        //         height: 70,
        //         width: 70,
        //       ),
        //     ),
        //     Expanded(
        //       child: SvgPicture.asset(
        //         'assets/images/svg/1.svg',
        //         height: 70,
        //         width: 70,
        //       ),
        //     ),
        //     Expanded(
        //       child: SvgPicture.asset(
        //         'assets/images/svg/1.svg',
        //         height: 70,
        //         width: 70,
        //       ),
        //     ),
        //   ],
        // ),
        Expanded(
          child: ListView(
            children: [
              GridView.count(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(3),
                crossAxisCount: 4,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                shrinkWrap: true,
                children: List.generate(
                  40,
                  (index) => SvgPicture.asset(
                    'assets/images/svg/${index + 1}.svg',
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
          child: Text(language(context).save,
              style: Theme.of(context).textTheme.subtitle2),
          height: 56,
          minWidth: double.infinity,
          color: myFavColor,
          onPressed: () {},
        )
      ]),
    );
  }
}
