import 'package:ee/packages/auth/drowr/reports/procurement_report.dart';
import 'package:ee/packages/auth/drowr/reports/service_report.dart';
import 'package:ee/packages/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../compontes/componets.dart';
import '../../../style/colors.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

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
          color: myFavColor,
          height: size.height * 0.2,
          width: double.infinity,
          child: Center(
            child: Text(
              language(context).reports,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        navPush(context, ServiceReport());
                      },
                      child: CircleAvatar(
                        backgroundColor: myFavColor1,
                        radius: 35,
                        child: Icon(
                          Icons.add_card,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      language(context).serviceReport,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: myFavColor),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        navPush(context, ProcurementReportScreeen());
                      },
                      child: CircleAvatar(
                        backgroundColor: myFavColor2,
                        radius: 35,
                        child: Icon(
                          Icons.shopping_cart_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      language(context).procurementReport,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: myFavColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 67,
          width: double.infinity,
          color: myFavColor,
        ),
      ]),
    );
  }
}
