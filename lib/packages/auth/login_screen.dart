import 'package:ee/packages/auth/cubit/cubit/cubit.dart';
import 'package:ee/packages/auth/cubit/states/states.dart';
import 'package:ee/packages/auth/regester_Screen.dart';
import 'package:ee/packages/compontes/componets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/constants.dart';
import '../lang/lang_cubit.dart';
import '../manager_center/main_screen.dart';
import '../manager_center/profile_Screen.dart';
import '../manager_center/rate_me_screen.dart';
import '../style/colors.dart';
import 'linkedaccount_screen.dart';
import 'myconnect_secreen.dart';

class LoginScreen extends StatelessWidget {
  bool isLang = false;

  @override
  Widget build(BuildContext context) {
    context.read<LanguageCubit>().changeStartLang();
    var scaffoldkey = GlobalKey<ScaffoldState>();
    var formKey = GlobalKey<FormState>();
    final phoneController = TextEditingController();
    final codeController = TextEditingController();
    return BlocConsumer<LogingCubit, LoginStates>(
      builder: (context, state) {
        Size size = MediaQuery.of(context).size;
        var cubit = LogingCubit.get(context);

        return Scaffold(
          key: scaffoldkey,
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
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).thestore,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                componetsDrower(
                    context: context,
                    name: language(context).reports,
                    onTap: () {
                      Navigator.pop(context);
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
          body: SingleChildScrollView(
            child: Column(children: [
              buildApper(size, context, () {
                scaffoldkey.currentState?.openDrawer();
              }, () {}),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Text(
                    language(context).entecode,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: myFavColor,
                        ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        defaultTextField(
                          controller: phoneController,
                          label: language(context).telephoneNumber,
                          priFix: Icons.phone,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return language(context).pleaseEnterSomeText;
                            }
                            return null;
                          },
                          keyBoard: TextInputType.number,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultTextField(
                          controller: codeController,
                          label: language(context).accesscode,
                          priFix: Icons.lock_outline,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return language(context).pleaseEnterSomeText;
                            }
                            return null;
                          },
                          keyBoard: TextInputType.number,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: MaterialButton(
                            height: 40,
                            minWidth: 150,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            color: myFavColor,
                            child: Text(language(context).login,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          cubit.changeLange(context);
                        },
                        child: CircleAvatar(
                          child: Text(
                            cubit.isLang == false ? 'English' : 'العربي',
                            style: Theme.of(context).textTheme.subtitle1,
                            textAlign: TextAlign.center,
                          ),
                          radius: 45,
                          backgroundColor: myFavColor2,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: CircleAvatar(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                language(context).problem,
                                style: Theme.of(context).textTheme.subtitle2,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                language(context).login,
                                style: Theme.of(context).textTheme.subtitle2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          radius: 45,
                          backgroundColor: Colors.brown,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          navPush(context, RegssterScreen());
                        },
                        child: CircleAvatar(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                language(context).registration,
                                style: Theme.of(context).textTheme.subtitle1,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                language(context).nnew,
                                style: Theme.of(context).textTheme.subtitle1,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          radius: 45,
                          backgroundColor: myFavColor1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  buildImag(),
                ],
              ),
            ]),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
