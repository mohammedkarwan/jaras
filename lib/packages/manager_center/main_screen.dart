import 'package:ee/packages/compontes/componets.dart';
import 'package:ee/packages/constants/constants.dart';
import 'package:ee/packages/manager_center/rate_me_screen.dart';
import 'package:ee/packages/style/colors.dart';
import 'package:flutter/material.dart';

import 'offerRequest.dart';

class MainScreen extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(children: [
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
                  Container(
                    width: double.infinity,
                    height: size.height * 0.55,
                    child: Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                textIcon(
                                    context: context,
                                    time: '10:0:0Am',
                                    iconTime: Icons.hourglass_bottom,
                                    order: language(context).order,
                                    orderIcon: Icons.food_bank_outlined,
                                    name: 'محمد احمد',
                                    nameIcon: Icons.person_outline,
                                    itWasReceived:
                                        language(context).itWasReceived,
                                    itWasReceivedIcon:
                                        Icons.visibility_outlined),
                                bulidBottons(
                                    onPressed1: () {
                                      navPush(context, OfferRequestScreen());
                                    },
                                    onPressed2: () {},
                                    onPressed3: () {
                                      navPush(context, RateMeScreen());
                                    },
                                    size: size,
                                    context: context,
                                    botton1: language(context).offerRequest,
                                    botton2: language(context).cancelOrder,
                                    botton3: language(context).rateThesService,
                                    rateme: '0/5'),
                                const SizedBox(
                                  height: 8,
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 5,
                            );
                          },
                          itemCount: 10),
                    ),
                  ),
                  // textIcon(
                  //     context: context,
                  //     time: '10:0:0Am',
                  //     iconTime: Icons.hourglass_bottom,
                  //     order: language(context).order,
                  //     orderIcon: Icons.food_bank_outlined,
                  //     name: 'محمد احمد',
                  //     nameIcon: Icons.person_outline,
                  //     itWasReceived: language(context).itWasReceived,
                  //     itWasReceivedIcon: Icons.visibility_outlined),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // bulidBottons(
                  //     onPressed1: () {},
                  //     onPressed2: () {},
                  //     onPressed3: () {
                  //       navPush(context, RateMeScreen());
                  //     },
                  //     size: size,
                  //     context: context,
                  //     botton1: language(context).offerRequest,
                  //     botton2: language(context).cancelOrder,
                  //     botton3: language(context).rateThesService,
                  //     rateme: '0/5'),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // const Divider(
                  //   thickness: 5,
                  // ),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // textIcon(
                  //     context: context,
                  //     time: '10:0:0Am',
                  //     iconTime: Icons.hourglass_bottom,
                  //     order: language(context).order,
                  //     orderIcon: Icons.food_bank_outlined,
                  //     name: 'محمد احمد',
                  //     nameIcon: Icons.person_outline,
                  //     itWasReceived: language(context).itWasReceived,
                  //     itWasReceivedIcon: Icons.visibility_outlined),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // bulidBottons(
                  //     onPressed1: () {},
                  //     onPressed2: () {},
                  //     onPressed3: () {
                  //       navPush(context, RateMeScreen());
                  //     },
                  //     size: size,
                  //     context: context,
                  //     botton1: language(context).offerRequest,
                  //     botton2: language(context).cancelOrder,
                  //     botton3: language(context).rateThesService,
                  //     rateme: '0/5'),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // Divider(
                  //   thickness: 5,
                  // ),
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // textIcon(
                  //     context: context,
                  //     time: '10:0:0Am',
                  //     iconTime: Icons.hourglass_bottom,
                  //     order: language(context).order,
                  //     orderIcon: Icons.food_bank_outlined,
                  //     name: 'محمد احمد',
                  //     nameIcon: Icons.person_outline,
                  //     itWasReceived: language(context).itWasReceived,
                  //     itWasReceivedIcon: Icons.visibility_outlined),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // bulidBottons(
                  //     onPressed1: () {},
                  //     onPressed2: () {},
                  //     onPressed3: () {
                  //       navPush(context, RateMeScreen());
                  //     },
                  //     size: size,
                  //     context: context,
                  //     botton1: language(context).offerRequest,
                  //     botton2: language(context).cancelOrder,
                  //     botton3: language(context).rateThesService,
                  //     rateme: '0/5'),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // Divider(
                  //   thickness: 5,
                  // ),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // textIcon(
                  //     context: context,
                  //     time: '10:0:0Am',
                  //     iconTime: Icons.hourglass_bottom,
                  //     order: language(context).order,
                  //     orderIcon: Icons.food_bank_outlined,
                  //     name: 'محمد احمد',
                  //     nameIcon: Icons.person_outline,
                  //     itWasReceived: language(context).itWasReceived,
                  //     itWasReceivedIcon: Icons.visibility_outlined),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // bulidBottons(
                  //     onPressed1: () {},
                  //     onPressed2: () {},
                  //     onPressed3: () {
                  //       navPush(context, RateMeScreen());
                  //     },
                  //     size: size,
                  //     context: context,
                  //     botton1: language(context).offerRequest,
                  //     botton2: language(context).cancelOrder,
                  //     botton3: language(context).rateThesService,
                  //     rateme: '0/5'),
                ],
              ),
            ],
          ),
          builedContanerBotton(
              context: context,
              name: "${language(context).clickHereAndGoodLuck}",
              onTap: () {})
        ]),
      ),
    );
  }
}
