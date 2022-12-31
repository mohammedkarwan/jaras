import 'package:flutter/material.dart';

import '../../../compontes/componets.dart';
import '../../../style/colors.dart';

class ShowScreen extends StatelessWidget {
  const ShowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
