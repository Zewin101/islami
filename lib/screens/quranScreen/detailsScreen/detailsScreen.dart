import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/quranScreen/detailsScreen/itemAyyat.dart';
import 'package:islami/theme/myColors.dart';
import '../../../../generated/assets.dart';
import '../ItemQuran/suraModel.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static const String routeName = "DetailsScreen";

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> ayaat = [];

  @override
  Widget build(BuildContext context) {
    SuraModel arg = ModalRoute.of(context)?.settings.arguments as SuraModel;
    loadFile(arg.index);
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
              "سورة ${arg.suraName}",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: ayaat.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                  color: COLORS_GOLD,
                ))
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white70,
             border: Border.all(width: 3, color: COLORS_GOLD),
              borderRadius: BorderRadius.circular(20),

            ),
                  child: ListView.builder(
                      itemCount: ayaat.length,
                      itemBuilder: (context, index) {
                        return ItemNumberAyyat(index+1,
                            ayaat[index]);
                      },
                    ),
                ),
              ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString("assets/sura/${index + 1}.txt");
    List <String> line=content.split("\n");
    ayaat = line;
    setState(() {});
  }
}
