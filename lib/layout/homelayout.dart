import 'package:flutter/material.dart';
import 'package:islamiproject/modules/hadieth/hadieth_view.dart';
import 'package:islamiproject/modules/quran/quran_view.dart';

import '../modules/radio/radio_view.dart';
import '../modules/settings/settings_view.dart';
import '../modules/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routename = "HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedindex = 0;
  List<Widget> ScreenWidget = [
    QuranView(),
    HadiethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
        body: ScreenWidget[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assest/images/icon_quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assest/images/icon_hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assest/images/icon_sebha.png")),
                label: "Tasbeh"),
            BottomNavigationBarItem(icon: Icon(Icons.radio), label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
