import 'package:flutter/material.dart';
import 'package:wordpanel/data_bloc/receiver_block.dart';

import 'package:wordpanel/models/uppercatagoriesmodel.dart';
import 'package:wordpanel/screens/catagorypage/catagoryscreen.dart';
import 'package:wordpanel/screens/mainscreen/widgets/catagoryitem.dart';
import 'package:wordpanel/screens/mainscreen/widgets/custombutton.dart';
import 'package:wordpanel/screens/mainscreen/widgets/leftpanel.dart';
import 'package:wordpanel/utils/backrounddecaration.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: backrounddecaration,
        child: const Row(children: [LeftPanel(), Pageinside()]),
      ),
    );
  }
}

class Pageinside extends StatelessWidget {
  const Pageinside({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(0, 0, 0, 0),
        width: 932,
        height: 750,
        child: const Column(
          children: [
            Upperbuttons(),
            SizedBox(
              height: 20,
            ),
            Catagories()
          ],
        ));
  }
}

class Catagories extends StatelessWidget {
  const Catagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 570,
        child: FutureBuilder(
          initialData: const [],
          future: ReceiverBlock().getuppercatagories,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                UpperCatagoriesmodel catagory = snapshot.data![index];
                return Catagoriitem(
                  subtitlecount: 000000000,
                  totalwordcount: catagory.totalwordcount,
                  text: catagory.name,
                  func: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Catagoryscreen(
                          catagoryname: catagory.name,
                        );
                      },
                    ));
                  },
                );
              },
            );
          },
        ));
  }
}

class Upperbuttons extends StatelessWidget {
  const Upperbuttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
            width: 230,
            text: "Yeni Katagori",
            func: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              size: 50,
            ))
      ],
    );
  }
}
