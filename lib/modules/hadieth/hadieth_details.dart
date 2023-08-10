import 'package:flutter/material.dart';
import 'package:islamiproject/modules/hadieth/hadieth_view.dart';

class HadiethDetails extends StatelessWidget {
  static const String routname = "HadiethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadiethDataClass;
    var theme = Theme.of(context);
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
                    args.title,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  args.content,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
