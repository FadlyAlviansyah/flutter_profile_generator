// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key, required this.username, required this.role, required this.sekolah, required this.deskripsi,});
  final String username;
  final String role;
  final String sekolah;
  final String deskripsi;

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Text(
  //         "Welcome back - $username - $sekolah",
  //         style: GoogleFonts.poppins(
  //             fontSize: 24,
  //             fontWeight: FontWeight.w500,
  //             color: const Color.fromARGB(255, 0, 0, 0)),
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          alignment: Alignment.center ,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: 
                        AssetImage('images/profile.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("$username", 
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Text("$role",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 40, 40, 40)),
                      ),
                      Text("$sekolah",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("$deskripsi",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        child: Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}