import 'package:clublire/margin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool liked = false;
  bool likeds = false;
  _pressed() {
    setState(() {
      liked = !liked;
    });
  }
   _presseds() {
    setState(() {
      likeds = !likeds;
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Feather.home, color: Color(0xffFF7236)),
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.bookmark, color: Color(0xffB1B2B3)),
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.search, color: Color(0xffB1B2B3)),
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.bell, color: Color(0xffB1B2B3)),
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Feather.user, color: Color(0xffB1B2B3)),
            label: (''),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: <Widget>[
          post(),
          const Yheight(10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Color(0xffDBDDDE).withOpacity(0.5)),
            ),
            height: 52,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 28, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(liked ? Icons.favorite : Icons.favorite_border,
                        color: liked ? Colors.red : Colors.grey),
                    onPressed: () => _pressed(),
                  ),
                  const Xwidth(20.5),
                  Icon(Feather.message_circle),
                  Spacer(),
                  Icon(Feather.bookmark)
                ],
              ),
            ),
          ),
          title(),
          discover(),
          post(),
          const Yheight(10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Color(0xffDBDDDE).withOpacity(0.5)),
            ),
            height: 52,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 28, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(likeds ? Icons.favorite : Icons.favorite_border,
                        color: likeds ? Colors.red : Colors.grey),
                    onPressed: () => _presseds(),
                  ),
                  const Xwidth(20.5),
                  Icon(Feather.message_circle),
                  Spacer(),
                  Icon(Feather.bookmark)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget post() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(13.3, 20, 28, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/img1.png',
                      height: 32,
                      width: 30.17,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Xwidth(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello!", style: TextStyle(fontSize: 16)),
                      Text(
                        "Posted by Agathe, 8 days ago",
                        style:
                            TextStyle(color: Color(0xffB1B2B3), fontSize: 14),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz,
                    color: Color(0xff141421).withOpacity(0.5),
                    size: 27.0,
                  ),
                ],
              ),
              const Yheight(7),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("This is a Title", style: TextStyle(fontSize: 14)),
                    const Yheight(7),
                    Text(
                        "And a description with a read more button at the end like this... Read more",
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/img2.png',
                        height: 80,
                        width: 50,
                        fit: BoxFit.fill,
                      ),
                      const Xwidth(13),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Some book ", style: TextStyle(fontSize: 14)),
                          const Yheight(3),
                          Text("Author name, 11 of April, 2018",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffB1B2B3))),
                          const Yheight(10),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Color(0xffFF7236),
                                ),
                                height: 27,
                                width: 106,
                                child: Center(
                                    child: Text("See this book",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            color: Colors.white))),
                              ),
                              const Xwidth(10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: Color(0xffB1B2B3)),
                                ),
                                height: 27,
                                width: 106,
                                child: Center(
                                    child: Text("I read this book ",
                                        style: GoogleFonts.roboto(
                                            fontSize: 13, color: Colors.grey))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget title() {
  return Container(
    color: Color(0xffF3F1F1),
    height: 40,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(19.3, 0, 38, 0),
      child: Row(
        children: [
          Text("Discover",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
          Spacer(),
          Text("See More",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFF7236),
                  fontSize: 14)),
        ],
      ),
    ),
  );
}

Widget discover() {
  return Container(
    color: Color(0xffF3F1F1),
    height: 174.26,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(13.3, 0, 28, 0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset(
            'assets/images/img.png',
            height: 174.26,
            width: 110,
            fit: BoxFit.fill,
          ),
          const Xwidth(7),
          Image.asset(
            'assets/images/img4.png',
            height: 174.26,
            width: 110,
            fit: BoxFit.fill,
          ),
          const Xwidth(7),
          Image.asset(
            'assets/images/img5.png',
            height: 174.26,
            width: 110,
            fit: BoxFit.fill,
          ),
          const Xwidth(7),
          Image.asset(
            'assets/images/img.png',
            height: 174.26,
            width: 110,
            fit: BoxFit.fill,
          ),
        ],
      ),
    ),
  );
}
