import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wordpanel/data_bloc/receiver_block.dart';
import 'package:wordpanel/models/levelmodel.dart';
import 'package:wordpanel/models/subcatagoories.dart';


class Catagories extends StatelessWidget {
  const Catagories({
    super.key,
    required this.catagory,
  });
  final SubCatagoriesmodel catagory;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 570,
        child: Container(
          height: 500,
          width: 750,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 145, 144, 144)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  catagory.name,
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 55),
                  ),
                ),
                Text(
                  'Toplam kelime sayısı: ${catagory.totalwordcount}',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  'Bu katagoride en yüksek skor: ${catagory.bestscor}',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  'Level bilgisi:',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  '  Level sayısı: ${catagory.levelcount}',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Text(
                  '  Leveller:',
                  style: GoogleFonts.irishGrover(
                    textStyle: const TextStyle(letterSpacing: .5, fontSize: 20),
                  ),
                ),
                Container(
                  height: 320,
                  width: 710,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 180, 178, 178),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: SingleChildScrollView(
                      child: FutureBuilder(
                        initialData: const [],
                    future: ReceiverBlock().getlevelwithsubtitle(),
                    builder: (context, snapshot) {
                      return Container(
                        color: const Color.fromARGB(0, 0, 0, 0),
                        height: 400,
                        width: 400,
                        child: ListView.builder(
                        
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            LevelModel level = snapshot.data![index];
                            return Levelitem(
                                level: level.name , func: () {}, wordcount: level.wordcount);
                          },
                        ),
                      );
                    },
                  )),
                )
              ],
            ),
          ),
        ));
  }
}

class Levelitem extends StatelessWidget {
  const Levelitem({
    super.key,
    required this.level,
    required this.func,
    required this.wordcount,
  });
  final String level;
  final Function() func;
  final int wordcount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: func,
        child: Container(
          height: 80,
          width: 600,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 114, 113, 113),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(
            children: [
              Text(
                '  Level $level',
                style: GoogleFonts.irishGrover(
                  textStyle: const TextStyle(letterSpacing: .5, fontSize: 25),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Text(
                'Kelime sayısı $wordcount',
                style: GoogleFonts.irishGrover(
                  textStyle: const TextStyle(letterSpacing: .5, fontSize: 25),
                ),
              ),
              const SizedBox(
                width: 150,
              ),
              const Icon(
                Icons.settings,
                size: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
