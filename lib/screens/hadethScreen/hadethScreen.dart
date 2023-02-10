import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/hadethScreen/detailsHadethScreen.dart';

import '../../generated/assets.dart';
import '../../theme/myColors.dart';

class HadethScreen extends StatefulWidget {
  static const String routeName = "HadethScreen";

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> hadeth = [];

  @override
  Widget build(BuildContext context) {
    if (hadeth.isEmpty) {
      loadHadethFile();
    }
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
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Divider(
            color: COLORS_GOLD,
            thickness: 3,
          ),
          Expanded(
            child: hadeth.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(
                      color: COLORS_GOLD,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DetailsHadethScreen.routeName,
                                arguments: hadeth[index]);
                          },
                          child: Center(
                            child: Text(
                              hadeth[index].tittle,
                              style: Theme.of(context).textTheme.subtitle1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => const Divider(
                          color: COLORS_GOLD,
                          thickness: 1,
                          indent: 15,
                          endIndent: 15,
                        ),
                    itemCount: hadeth.length),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString(Assets.ahadethAhadeth);
    List<String> allHadeth = content.trim().split("#\r\n");
    for (int i = 0; i < allHadeth.length; i++) {
      String Hadeth = allHadeth[i];
      List<String> hadethLine = Hadeth.split('\n');
      String tittle = hadethLine[0].trim();
      hadethLine.removeAt(0);
      HadethModel hadethModel = HadethModel(tittle, hadethLine);
      hadeth.add(hadethModel);
    }
    setState(() {});
  }
}
class HadethModel {
  String tittle;
  List<String> content;
  HadethModel(this.tittle, this.content);
}
