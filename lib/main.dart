import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEFEFEF),
      ),
      home: _Details(),
    );
  }
}

class _Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          _ImageAndText(),
          _TextAfterImage(),
          _TextAfterPrice(),
        ]),
      ),
    );
  }
}

class _ImageAndText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 320,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          icon: Image.asset("assets/images/back.png"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 320,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  image: DecorationImage(
                    alignment: Alignment.topRight,
                    image: AssetImage("assets/images/watch.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 25),
                  child: RichText(
                    text: TextSpan(
                      text: 'Nixon\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Text1',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Men's C39 Leather Leather White Dial",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Text2',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextAfterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                child: Text(
                  "\$165.98",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFb37358),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 70,
                margin: EdgeInsets.only(
                  left: 70,
                ),
                child: IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  icon: Image.asset("assets/images/cube.png"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextAfterPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Band Type",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 110),
                child: Text(
                  "Strap",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black38,
          thickness: 1,
          indent: 60,
          endIndent: 25,
        ),
        Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Band Width",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 97),
                child: Text(
                  "18mm",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black38,
          thickness: 1,
          indent: 60,
          endIndent: 25,
        ),
        Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Bezel Material",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Stainless Steel",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black38,
          thickness: 1,
          indent: 60,
          endIndent: 25,
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 60,
                ),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text:
                        "The Nixon, C39 Leather series features a stainless\nsteel 39mm case,with a fixed bezel,a white dial and\na scratch resistant mineral crystal.Sub-dials:one 60\nsecond. The 18mm leather band is fitted with a\nbuckle clasp.This beautiful wristwatch.\n\n",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '2 Year WatchCenter Warranty and keep receipt',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 40,
            top: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              Center(
                child: ButtonTheme(
                  minWidth: 275,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Color(0xFFb37358),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "ADD TO BAG       + ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
