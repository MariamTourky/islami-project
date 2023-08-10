import 'package:flutter/material.dart';
import 'package:islamiproject/modules/quran/sura_details.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraname;
  final int suranumber;

  SuraNameWidget({required this.suranumber, required this.suraname});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            SuraDetails.routename,
            arguments:
                SuraDetailsArg(suraindex: suranumber, suraname: suraname),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "$suranumber",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 3,
              height: 60,
              color: theme.primaryColor,
            ),
            Expanded(
              child: Text(
                suraname,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraDetailsArg {
  String suraname;
  int suraindex;

  SuraDetailsArg({required this.suraindex, required this.suraname});
}
