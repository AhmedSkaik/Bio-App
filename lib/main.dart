import 'package:bio_screan/Screans/bio_Screan.dart';
import 'package:bio_screan/Screans/launch_screan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/launch_Screen' ,
      routes: {
         '/launch_Screen' :(context)=>   LaunchScrean(),
        '/bio_Screen' : (context) => BioScrean()

      },
    );
  }
}
