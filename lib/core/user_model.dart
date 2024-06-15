import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String email;
  final String name;
  final String uid;
  final String area;

  UserModel(
      {required this.email,
        required this.name,
        required this.area,
        required this.uid,
      });

  Map<String, dynamic> toJson() => {
    "email": email,
    "uid": uid,
    "name": name,
    "area": area,
  };

  static UserModel? fromSnap (DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
      area: snapshot['area'],
      uid: snapshot['uid'],
      name: snapshot['name'],
      email: snapshot['email'],
    );
  }
}