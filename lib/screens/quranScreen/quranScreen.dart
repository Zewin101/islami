import 'package:flutter/material.dart';
import 'package:islami/generated/assets.dart';
import 'package:islami/screens/quranScreen/ItemQuran/itemQuran.dart';
import 'package:islami/screens/quranScreen/ItemQuran/suraModel.dart';
import 'package:islami/screens/quranScreen/ItemQuran/suraName.dart';

import 'package:islami/theme/myColors.dart';

import 'detailsScreen/detailsScreen.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({Key? key}) : super(key: key);
  static const String routeName = "DetailsScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesQur2anScreenLogo),
          Divider(
            color: COLORS_GOLD,
            thickness: 3,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                "عدد ايات السورة",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
              )),
              Container(
                height: 30,
                width: 2,
                color: COLORS_GOLD,
              ),
              Expanded(
                child: Text(
                  "اسم السورة",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
          Divider(
            color: COLORS_GOLD,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: SuraName.length,
              itemBuilder: (context, index) {
                return ItemQuran(index, () {
                  Navigator.pushNamed(context, DetailsScreen.routeName,
                      arguments: SuraModel(index, SuraName[index]));
                });
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          )
        ],
      ),
    );
  }
}
