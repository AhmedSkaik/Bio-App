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
          ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.blue,
            ),
            Text(
              "Flutter",
              style: GoogleFonts.actor(fontSize: 18, fontWeight: FontWeight.bold ,
              height: 1.5),
            ),
            Text(
              'revision 2022-2023',
              style: GoogleFonts.cairo(letterSpacing: 1,height: 2),
            ),
            const Divider(thickness: 0.7,
            indent: 30,
              endIndent: 30,
              height: 50,
            ),
              Card(
                elevation: 0,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               margin: const EdgeInsets.symmetric(horizontal: 20),
               child: const ListTile(
                 leading: Icon(Icons.person),
                 title: Text('Phone'),
                 subtitle: Text('0595544778'),
                 trailing: Icon(Icons.call),
               ),
             ),
            Container(
              
              margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20
              ),

              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              , borderRadius: BorderRadius.circular(10)
              ),
              child: const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('ahmedskaik@gmail.com'),
                trailing: Icon(Icons.send),
              ),
            )

          ],
        ),
      ),
    );
  }
}
