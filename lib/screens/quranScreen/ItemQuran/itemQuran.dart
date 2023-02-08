import 'package:flutter/material.dart';
import 'package:islami/screens/quranScreen/ItemQuran/suraName.dart';

import '../../../theme/myColors.dart';

class ItemQuran extends StatelessWidget {
  int index;
  Function navigator;


  ItemQuran(this.index, this.navigator);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigator();
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Text(
            NumberOfSura[index].toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          )),
          Container(
            height: 30,
            width: 2,
            color: COLORS_GOLD,
          ),
          Expanded(
            child: Text(
              SuraName[index],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
