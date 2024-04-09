import 'package:flutter/material.dart';
import 'package:wordpanel/screens/levelpage/widget/panelitems.dart';

import 'package:wordpanel/screens/mainscreen/widgets/custombutton.dart';


class LeftPanel extends StatelessWidget {
  const LeftPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 1200,
      color: const Color.fromARGB(158, 158, 158, 158),
      child: Column(
        children: [
          const Paneltext(),
          const Panelitems(),
          CustomButton(
            width: 200,
            text: "Ayarlar",
            icon: const Icon(Icons.settings_outlined),
            func: () {},
          )
        ],
      ),
    );
  }
}