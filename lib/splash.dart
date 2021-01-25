import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Widget post() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/img1.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF3F1F1),
        toolbarHeight: 60,
        centerTitle: true,
        title: new Text("ClubLire",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            )),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: <Widget>[],
      ),
    );
  }
}
