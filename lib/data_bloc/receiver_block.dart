import 'package:wordpanel/models/levelmodel.dart';
import 'package:wordpanel/models/subcatagoories.dart';
import 'package:wordpanel/models/uppercatagoriesmodel.dart';

class ReceiverBlock {
  Future<List> get getuppercatagories async {
    List catagories = [
      UpperCatagoriesmodel(
        name: "Bilim",
        totalwordcount: 100,
        uid: "",
      ),
      UpperCatagoriesmodel(
        name: "Sanat",
        totalwordcount: 100,
        uid: "",
      )
    ];
    return catagories;
  }

  Future<List> getsubcatagories(String whichuppercatagori) async {
    late List<SubCatagoriesmodel> catagories;

    if (whichuppercatagori == "Bilim") {
      catagories = [
        SubCatagoriesmodel(
            name: "Matematik",
            totalwordcount: 1000,
            bestscor: 100,
            uid: "uid",
            levelcount: 10,
            catagory: "Bilim",
            image: "image"),
        SubCatagoriesmodel(
            name: "Fizik",
            totalwordcount: 100,
            bestscor: 100,
            uid: "uid",
            levelcount: 10,
            catagory: "Bilim",
            image: "image")
      ];
    } else {
      catagories = [];
    }

    return catagories;
  }

  Future<List<LevelModel>> getlevelwithsubtitle() async {
    late List<LevelModel> level;

    level = [
      LevelModel(name: "1", wordcount: 20, bestscor: 150, uid: "uid"),
      LevelModel(name: "2", wordcount: 20, bestscor: 150, uid: "uid"),
      LevelModel(name: "3", wordcount: 20, bestscor: 150, uid: "uid")
    ];

    return level;
  }
}
