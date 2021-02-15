import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: DrawClip1(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xff46ddbf).withOpacity(0.5),
                    Color(0xff3088e2).withOpacity(0.5)
                  ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
                ),
              ),
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff46ddbf), Color(0xff3088e2)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft)),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 100),
                      child: Text(
                        "Welcome",
                        style: GoogleFonts.raleway(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 0),
                      child: Text(
                        "Back",
                        style: GoogleFonts.raleway(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 120, right: 50),
                      child: input("E-mail Address", false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 10, right: 50),
                      child: input("Password", true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 2, top: 20),
                      child: Text(
                        "FORGOT PASSWORD ?",
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            color: Color(0xff46ddbf),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: FlatButton(
                        padding: EdgeInsets.only(top: 50),
                        onPressed: null,
                        child: Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff46ddbf),
                                      Color(0xff46ddbf).withOpacity(0.8)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Color(0xff31b8b1).withOpacity(0.5),
                                    width: 2)),
                            height: 40,
                            child: Center(
                              child: Text(
                                "Login",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width / 3, right: size.width / 3, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  "https://i.postimg.cc/zG2dhf5X/twitter-1.png",
                                  height: 40,
                                  width: 40)),
                          Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  "https://i.postimg.cc/L4vj5bmm/facebook-1.png",
                                  height: 40,
                                  width: 40)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    
                    Center(
                      child: Text(
                        "Don't have an account ?",
                        style: GoogleFonts.raleway(
                            fontSize: 18,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Text(
                        "SIGNUP",
                        style: GoogleFonts.raleway(
                            fontSize: 18,
                            color: Color(0xff46ddbf),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget input(String hint, bool pass) {
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.raleway(color: Colors.grey),
          contentPadding: EdgeInsets.only(top: 15, bottom: 15),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300], width: 2.0)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff46ddbf), width: 1.0))),
    ),
  );
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 50.0), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width * 0.3, 50.0), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
