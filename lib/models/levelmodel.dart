// ignore_for_file: public_member_api_docs, sort_constructors_first
class LevelModel {
  String name;

  int wordcount;
  int bestscor;
  String uid;

  LevelModel({
    required this.name,
    required this.wordcount,
    required this.bestscor,
    required this.uid,
  });
  factory LevelModel.defaultuser() {
    return LevelModel(
      name: 'default',
      uid: 'uid',
      bestscor: 000,
      wordcount: 0,
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
