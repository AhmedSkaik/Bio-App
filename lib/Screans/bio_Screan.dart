import 'package:bio_screan/Widgets/bio_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScrean extends StatelessWidget {
  const BioScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('BIO', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.blue.shade200,
              Colors.pink.shade200,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.blue,
            ),
            Text(
              "Flutter",
              style: GoogleFonts.actor(
                  fontSize: 18, fontWeight: FontWeight.bold, height: 1.5),
            ),
            Text(
              'revision 2022-2023',
              style: GoogleFonts.cairo(letterSpacing: 1, height: 2),
            ),
            const Divider(
              thickness: 0.7,
              indent: 30,
              endIndent: 30,
              height: 50,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(left: 30 ,right: 30 ,bottom: 10),
              child: const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('Email@gmail.com'),
                trailing: Icon(Icons.send),
              ),
            ),
            const BioContainer(
              leadingIcon: Icons.phone_android,
              title: "Mobile",
              subtitle: "0595448899",
              trialingIcon: Icons.phone,
            ),
            const BioContainer(
              leadingIcon: Icons.home,
              title: "Address",
              subtitle: "GAZA",
              trialingIcon: Icons.map,
            ),
          ],
        ),
      ),
    );
  }
}
