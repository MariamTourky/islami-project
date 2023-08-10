import 'package:flutter/material.dart';
import 'package:islamiproject/core/style/app_theme.dart';
import 'package:islamiproject/layout/homelayout.dart';
import 'package:islamiproject/modules/hadieth/hadieth_details.dart';
import 'package:islamiproject/modules/hadieth/hadieth_view.dart';
import 'package:islamiproject/modules/quran/quran_view.dart';
import 'package:islamiproject/modules/quran/sura_details.dart';
import 'package:islamiproject/modules/radio/radio_view.dart';
import 'package:islamiproject/modules/settings/settings_view.dart';
import 'package:islamiproject/modules/splash/splash_view.dart';
import 'package:islamiproject/modules/tasbeh/tasbeh_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lighttheme,
      home: HadiethView(),
      initialRoute: SplashView.routename,
      routes: {
        SplashView.routename: (context) => SplashView(),
        HomeLayout.routename: (context) => HomeLayout(),
        QuranView.routname: (context) => QuranView(),
        HadiethView.routname: (context) => HadiethView(),
        TasbehView.routname: (context) => TasbehView(),
        SettingsView.routname: (context) => SettingsView(),
        RadioView.routname: (context) => RadioView(),
        SuraDetails.routename: (context) => SuraDetails(),
        HadiethDetails.routname: (context) => HadiethDetails(),
      },
    );
  }
}
