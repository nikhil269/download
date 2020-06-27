import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AatmNirbhar App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              Text(
                "ScreenShots :",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/ss1.jpg",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            "assets/ss2.jpg",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            "assets/ss3.jpg",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            "assets/ss4.jpg",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Image.asset(
                            "assets/ss5.jpg",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  launch(
                      "https://drive.google.com/file/d/14oZj_jPRu5PO74azoVVY0PPe9bM4Vtuj/view?usp=sharing");
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Card(
                    child: Center(
                        child: Text(
                      "Download",
                      style: GoogleFonts.openSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      launch("https://www.instagram.com/nikhil.chaudhary269/");
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            "Connect on Instagram",
                            style: GoogleFonts.openSans(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
                          )),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launch("https://github.com/nikhil269");
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            "Follow me on Github",
                            style: GoogleFonts.openSans(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
