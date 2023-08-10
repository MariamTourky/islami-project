import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiproject/modules/hadieth/hadieth_details.dart';

class HadiethView extends StatelessWidget {
  List<HadiethDataClass> allhadieth = [];
  static const String routname = "HadiethView";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    LoadHadiethfile();
    return Column(
      children: [
        Image(image: AssetImage("assest/images/hadeth_logo.png")),
        Divider(
          color: theme.primaryColor,
          thickness: 3,
        ),
        Text(
          "الأحاديث",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w300,
          ),
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: allhadieth.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadiethDetails.routname,
                      arguments: allhadieth[index]);
                },
                child: Text(
                  allhadieth[index].title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void LoadHadiethfile() async {
    List<HadiethDataClass> list = [];
    String content = await rootBundle.loadString(
        "assest/files/ahadeth .txt"); // هيرجعلي الاحاديث كلها txt علي بعضو
    List<String> allHadiethContent = content.split(
        "#"); // هيفصل بين كل حديث والتاني وهيرجعلي كل كل حديث لوحدو وهخزنهم في list
    for (int i = 0; i <= allHadiethContent.length; i++) {
      String singleHadiethContent = allHadiethContent[i].trim();
      int indexOfFirstLine = singleHadiethContent.indexOf("\n");
      String title = singleHadiethContent.substring(0, indexOfFirstLine);
      String content = singleHadiethContent.substring(indexOfFirstLine + 1);
      HadiethDataClass hadieth =
          HadiethDataClass(title: title, content: content);
      list.add(hadieth);
    }
    allhadieth = list;
  }
}

class HadiethDataClass {
  String title;
  String content;

  HadiethDataClass({required this.title, required this.content});
}
