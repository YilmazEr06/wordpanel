// ignore_for_file: public_member_api_docs, sort_constructors_first
class SubCatagoriesmodel {
  String name;

  int totalwordcount;
  int bestscor;
  String uid;
  int levelcount;
  String catagory;
  String image;
  SubCatagoriesmodel({
    required this.name,
    required this.totalwordcount,
    required this.bestscor,
    required this.uid,
    required this.levelcount,
    required this.catagory,
    required this.image,
  });
  factory SubCatagoriesmodel.defaultuser() {
    return SubCatagoriesmodel(
      name: 'default',
      totalwordcount: 0,
      uid: 'uid',
      bestscor: 000,
      levelcount: 000,
      catagory: '',
      image: '',
    );
  }
  //
  // factory CardModel.fromFirestore(
  //   DocumentSnapshot<Map<String, dynamic>> snapshot,
  // ) {
  //   final data = snapshot.data();
  //   return CardModel(
  //       name: data?['username'],
  //       wordscount: data?['email'],
  //
  //      uid: data?['uid'],
  //       );
  // }
//
  Map<String, dynamic> toFirestore() {
    return {
      "username": name,
      "email": "wordscount",
      "uid": uid,
    };
  }
}
