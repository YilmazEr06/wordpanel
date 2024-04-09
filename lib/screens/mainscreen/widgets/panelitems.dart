import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Panelitems extends StatelessWidget {
  const Panelitems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(0, 33, 149, 243),
      height: 540,
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Panelitem(text: "Katagoriler",),
          ],
        ),
      ),
    );
  }
}

class Panelitem extends StatelessWidget {
  const Panelitem({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 202, 199, 199),
            border: Border.all(width: 0.5, color: Colors.black)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.irishGrover(
              textStyle: const TextStyle(letterSpacing: .5, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}

class Paneltext extends StatelessWidget {
  const Paneltext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      color: const Color.fromARGB(158, 158, 158, 158),
      child: Text(
        ' Panel',
        style: GoogleFonts.irishGrover(
          textStyle: const TextStyle(
              letterSpacing: .5, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
