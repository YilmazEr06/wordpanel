// ignore_for_file: public_member_api_docs, sort_constructors_first
class UpperCatagoriesmodel {
  String name;

  int totalwordcount;
 
  String uid;
  
  UpperCatagoriesmodel({
    required this.name,
    required this.totalwordcount,
  
    required this.uid,
  
  });
  factory UpperCatagoriesmodel.defaultuser() {
    return UpperCatagoriesmodel(
      name: 'default',
      totalwordcount: 0,
      uid: 'uid',
     
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
