import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  static const String routname = "RadioView";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("assest/images/radio_image.png")),
          Text(
            "إذاعة القرآن الكريم ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Image(image: AssetImage("assest/images/radio_play.png")),
        ],
      ),
    );
  }
}
