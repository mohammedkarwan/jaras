import 'package:ee/packages/auth/cubit/cubit/cubit.dart';
import 'package:ee/packages/auth/cubit/states/states.dart';
import 'package:ee/packages/auth/drowr/reports/reports_screen.dart';
import 'package:ee/packages/auth/drowr/sotre_screen.dart';
import 'package:ee/packages/auth/linkedaccount_screen.dart';
import 'package:ee/packages/auth/myconnect_secreen.dart';
import 'package:ee/packages/manager_center/main_screen.dart';
import 'package:ee/packages/manager_center/profile_Screen.dart';
import 'package:ee/packages/manager_center/serves_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class RateMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffoldkey = GlobalKey<ScaffoldState>();
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<LogingCubit, LoginStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LogingCubit.get(context);
        return Scaffold(
          key: scaffoldkey,
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
              leadingOnPresse: () {
                scaffoldkey.currentState?.openDrawer();
              }),
          drawer: Drawer(
            backgroundColor: Colors.white,
            width: 265,
            child: ListView(
              children: [
                Image(
                  image: AssetImage('assets/images/Jaraslogo.png'),
                  height: 80,
                  width: 80,
                ),
                Divider(
                  thickness: 4,
                  endIndent: 20,
                  indent: 20,
                  color: myFavColor,
                ),
                SizedBox(
                  height: 15,
                ),
                componetsDrower(
                    context: context,
                    name: language(context).main,
                    onTap: () {
                      Navigator.pop(context);

                      navPush(context, MainScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).arithmetic,
                    onTap: () {
                      Navigator.pop(context);
                      navPush(context, ProfileScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).linkedaccounts,
                    onTap: () {
                      Navigator.pop(context);
                      navPush(context, LinkedAccountScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).myconnections,
                    onTap: () {
                      Navigator.pop(context);
                      navPush(context, MyConccetScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).services,
                    onTap: () {
                      Navigator.pop(context);
                      navPush(context, ServesScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).thestore,
                    onTap: () {
                      Navigator.pop(context);
                      navPush(context, StoreScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).reports,
                    onTap: () {
                      Navigator.pop(context);
                      navPush(context, ReportsScreen());
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).therooms,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).employees,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).correspondents,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).bribery,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).plugins,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                componetsDrower(
                    color: myFavColor,
                    context: context,
                    name: cubit.isLang == false ? 'English' : 'العربي',
                    onTap: () {
                      cubit.changeLange(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).knowAboutUs,
                    onTap: () {
                      cubit.changeLange(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).departmentsAndDivisions,
                    onTap: () {
                      cubit.changeLange(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).printers,
                    onTap: () {
                      cubit.changeLange(context);
                    }),
                SizedBox(
                  height: size.height * 0.01,
                ),
                buildImag(height: 40, width: 40),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            ),
          ),
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
      },
    );
  }
}

Widget componetsDrower({
  required context,
  required String name,
  required void Function()? onTap,
  Color? color,
}) =>
    InkWell(
      onTap: onTap,
      child: Row(children: [
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.star,
          size: 30,
          color: color ?? myFavColor1,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: color ?? myFavColor1)),
      ]),
    );
