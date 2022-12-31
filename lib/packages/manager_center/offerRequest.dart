import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class OfferRequestScreen extends StatelessWidget {
  const OfferRequestScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          apparContanier(
              size: size,
              context: context,
              accountName: 'احمد محمد',
              account: language(context).foundationAccount,
              date: '01/12/2022'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                textIcon(
                    context: context,
                    time: '10:0:0Am',
                    iconTime: Icons.hourglass_bottom,
                    order: language(context).order,
                    orderIcon: Icons.food_bank_outlined,
                    name: 'محمد احمد',
                    nameIcon: Icons.person_outline,
                    itWasReceived: language(context).itWasReceived,
                    itWasReceivedIcon: Icons.visibility_outlined),
                const SizedBox(
                  height: 8,
                ),
                bulidTwoBottons(
                    color1: Colors.red,
                    color2: myFavColor,
                    onPressed1: () {},
                    onPressed2: () {},
                    onPressed3: () {},
                    size: size,
                    context: context,
                    botton1: language(context).cancelOrder,
                    botton2: language(context).rateThesService,
                    rateme: '0/5'),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  thickness: 5,
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: size.height * 0.44,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: myFavColor2,
                          width: 5,
                          height: double.infinity,
                        )
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
