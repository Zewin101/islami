import 'package:flutter/material.dart';
import 'package:islami/contants/contants.dart';
import 'package:islami/generated/assets.dart';
import 'package:islami/screens/quranScreen/quranScreen.dart';
import 'package:islami/screens/radioScreen/radioScreen.dart';
import 'package:islami/screens/sebhaScreen/sebhaScreen.dart';
import 'package:islami/theme/myColors.dart';

import '../screens/hadethScreen/hadethScreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);
  static const String routeName = "layout";

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesSplash,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              MyConstString.titleName,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(Assets.imagesIconQuran),
                    size: 30,
                  ),
                  label: "Quran",
                  backgroundColor: COLORS_GOLD),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assets.imagesIconSebha), size: 30),
                  label: "Sebha",
                  backgroundColor: COLORS_GOLD),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(Assets.imagesIconRadio), size: 30),
                  label: "Radio",
                  backgroundColor: COLORS_GOLD),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage(Assets.imagesIconHadeth), size: 30),
                  label: "Hadeth",
                  backgroundColor: COLORS_GOLD),
            ],
          ),
          body: tap[currentIndex],
        ),
      ],
    );
  }

  List<Widget> tap = [
    QuranScreen(),
    SebhaScreen(),
    RadioScreen(),
    HadethScreen(),
  ];
}
