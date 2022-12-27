import 'package:flutter/material.dart';

import '../auth/drowr/bribery/briberysetting.dart';
import '../auth/drowr/bribery/newShoppinglist.dart';
import '../compontes/componets.dart';
import '../constants/constants.dart';
import '../style/colors.dart';

class BriberyScreen extends StatelessWidget {
  const BriberyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: defaultAppBar(
          context: context,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: CircleAvatar(
                  backgroundColor: myFavColor2,
                  radius: 16,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: myFavColor,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: myFavColor2,
                      ),
                    ),
                  ),
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
              language(context).bribery,
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
                        navPush(context, BriberySetting());
                      },
                      child: CircleAvatar(
                        backgroundColor: myFavColor1,
                        radius: 35,
                        child: Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      language(context).purchaseSettings,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: myFavColor, fontSize: 13),
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
                        navPush(context, NewShoppingListScreen());
                      },
                      child: CircleAvatar(
                        backgroundColor: myFavColor,
                        radius: 35,
                        child: Icon(
                          Icons.shopping_cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      language(context).newPurchases,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: myFavColor, fontSize: 13),
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
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: myFavColor2,
                        radius: 35,
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      language(context).previousPurchases,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: myFavColor, fontSize: 13),
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
