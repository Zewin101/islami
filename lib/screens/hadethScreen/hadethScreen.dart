import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../../theme/myColors.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesHadethLogo),
          const Divider(
            color: COLORS_GOLD,
            thickness: 3,
          ),
          Text(
            'حديث شريف',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const Divider(
            color: COLORS_GOLD,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
