import 'package:flutter/material.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          defaultAppBar(context: context, actions: [], leadingOnPresse: () {}),
      body: Column(
        children: [
          apparContanier(
              size: size,
              context: context,
              accountName: 'احمد محمد',
              account: language(context).foundationAccount,
              date: '01/12/2022'),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
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
                      onPressed1: () {},
                      onPressed2: () {},
                      onPressed3: () {},
                      size: size,
                      context: context,
                      botton1: language(context).offerRequest,
                      botton2: language(context).cancelOrder,
                      rateme: '0/5'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    thickness: 5,
                  ),
                  Image.asset(
                    'assets/images/rate-me.png',
                    width: 150,
                    height: 150,
                  ),
                  Text(
                    language(context).howSatisfiedAreYouWithTheService,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Row(children: [
                    Expanded(
                        child: Image.asset('assets/images/1.png',
                            fit: BoxFit.fill),
                        flex: 1),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Image.asset('assets/images/2.png',
                            fit: BoxFit.fill),
                        flex: 1),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Image.asset('assets/images/3.png',
                            fit: BoxFit.fill),
                        flex: 1),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Image.asset('assets/images/4.png',
                            fit: BoxFit.fill),
                        flex: 1),
                    Expanded(
                        child: Image.asset('assets/images/5.png',
                            fit: BoxFit.fill),
                        flex: 1),
                  ]),
                ],
              ),
            ],
          ),
          Spacer(),
          builedContanerBotton(
              context: context,
              name: "${language(context).clickHereAndGoodLuck}",
              onTap: () {})
        ],
      ),
    );
  }
}
