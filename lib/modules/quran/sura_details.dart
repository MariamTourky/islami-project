import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiproject/modules/quran/ayat_elquran.dart';
import 'package:islamiproject/modules/quran/widget/sura_widget.dart';

class SuraDetails extends StatefulWidget {
  static const String routename = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String chapterName = "";
  String lines = "";
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    SuraDetailsArg args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArg;

    if (chapterName.isEmpty) readFile(args.suraindex);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assest/images/light_background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 15, bottom: 80, left: 40, right: 30),
          padding: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            color: Color(0xFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  سورة${args.suraname}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.play_circle),
                ],
              ),
              Divider(
                color: theme.primaryColor,
                indent: 40,
                endIndent: 40,
                thickness: 1.5,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      AyatElquran(ayat: verses[index], index: index + 1),
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void readFile(int fileindex) async {
    String fileContent =
        await rootBundle.loadString("assest/files/${fileindex}.txt");
    chapterName = fileContent;

    // List<String>lines=fileContent.trim().split("\n");
    verses = chapterName.split("'\n'");
    setState(() {});
    print(verses);
  }
}
