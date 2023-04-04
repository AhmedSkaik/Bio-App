import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScrean extends StatefulWidget {
  const LaunchScrean({Key? key}) : super(key: key);

  @override
  State<LaunchScrean> createState() => _LaunchScreanState();
}

class _LaunchScreanState extends State<LaunchScrean> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, '/bio_Screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade300, Colors.pink.shade300])),
        child: Text(
          "BIO APP",
          style: GoogleFonts.cairo(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
