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
        title: Text("Download Corona Live Tracking App"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: Center(
                    child: Text(
                  "Note : Tap on your device type and download \n Android apk size is reduced from 18mb to 7.5mb",
                  style: GoogleFonts.openSans(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                launch(
                    "https://drive.google.com/open?id=1EXeK01zw06mKyUYWVApU-5grSsmwUUhA");
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Card(
                  child: Center(
                      child: Text(
                    "Android (Tested)",
                    style: GoogleFonts.openSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                launch("http://corona.nikhil.cf/");
              },
                          child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Card(
                  child: Center(
                      child: Text(
                    "Website (Tested)",
                    style: GoogleFonts.openSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                launch("https://drive.google.com/open?id=1M0YXJxNOnUfKGp-71V4YI5RQbHkBXUjd");
              },
                          child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Card(
                  child: Center(
                      child: Text(
                    "IOS (Not Tested)",
                    style: GoogleFonts.openSans(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  )),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                child: Center(
                    child: Text(
                  "Mac (Comming Soon)",
                  style: GoogleFonts.openSans(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                child: Center(
                    child: Text(
                  "Linux (Comming Soon)",
                  style: GoogleFonts.openSans(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                  InkWell(
                    onTap: (){
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
                onTap: (){
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
    );
  }
}
