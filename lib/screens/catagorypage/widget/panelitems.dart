import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordpanel/data_bloc/receiver_block.dart';
import 'package:wordpanel/models/subcatagoories.dart';

class Panelitems extends StatefulWidget {
  const Panelitems({
    super.key, required this.changeselected,
  });
   final void Function(SubCatagoriesmodel) changeselected;
  @override
  State<Panelitems> createState() => _PanelitemsState();
}

class _PanelitemsState extends State<Panelitems> {
  String selected = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(0, 33, 149, 243),
      height: 540,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FutureBuilder(
          initialData: const [],
          future: ReceiverBlock().getsubcatagories("Bilim"),
          builder: (context, snapshot) {
            return Container(
              height: 550,
              color: const Color.fromARGB(0, 0, 0, 0),
              width: 100,
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  SubCatagoriesmodel catagories = snapshot.data![index];
                  if (selected == "" && index == 0) {
                    selected = catagories.name;
                  }

                  return GestureDetector(
                    onTap: () {
                      widget.changeselected(catagories);
                      setState(() {
                        selected = catagories.name;
                      });
                    },
                    child: SizedBox(
                        child: Panelitem(
                      text: catagories.name,
                      selected: selected == catagories.name ? true : false,
                    )),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Panelitem extends StatelessWidget {
  const Panelitem({
    super.key,
    required this.text,
    required this.selected,
  });
  final String text;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selected
                ? const Color.fromARGB(158, 0, 0, 0)
                : const Color.fromARGB(255, 202, 199, 199),
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
