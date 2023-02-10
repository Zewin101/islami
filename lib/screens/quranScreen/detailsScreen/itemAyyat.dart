import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class ItemNumberAyyat extends StatelessWidget {
  int index;
  String TEXT;

  ItemNumberAyyat(this.index, this.TEXT, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          TEXT,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 30,
              child: Image.asset(
                Assets.imagesItemAya,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            Text("$index"),
          ],
        ),
      ],
    );
  }
}
