import 'package:flutter/material.dart';

import 'package:islami/theme/myColors.dart';
import '../../../../generated/assets.dart';
import 'hadethScreen.dart';

class DetailsHadethScreen extends StatefulWidget {
  static const String routeName = "DetailshadethScreen";

  @override
  State<DetailsHadethScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsHadethScreen> {


  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          Assets.imagesSplash,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Image.asset(
          Assets.imagesBack2,
          width: double.infinity,
          color: Colors.white.withOpacity(0.40),
          colorBlendMode: BlendMode.modulate,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              arg.tittle,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: arg.content.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                  color: COLORS_GOLD,
                ))
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(width: 3, color: COLORS_GOLD),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      itemCount: arg.content.length,
                      itemBuilder: (context, index) {
                        return Text(
                          arg.content[index],
                          style: Theme.of(context).textTheme.subtitle1,
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
