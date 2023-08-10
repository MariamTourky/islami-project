import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  static const String routname = "TasbehView";

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count = (count + 1) % 34;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Image(
            image: AssetImage("assest/images/head_sebha_logo.png"),
            width: 73,
            height: 80,
          ),
          Image(
            image: AssetImage("assest/images/body_sebha_logo.png"),
            width: 232,
            height: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "عدد التسبيحات ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 75,
            height: 81,
            child: ElevatedButton(
                onPressed: incrementCount,
                child: Text("$count",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 25)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFC0A678)),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            width: 137,
            height: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: theme.primaryColor,
            ),
            child: Text(
              "سبحان الله",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
