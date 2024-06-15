import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:together/core/ngo_model.dart';
import 'package:together/core/user_model.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String? name,
    required String? email,
    required String? password,
    required String? area,
  }) async {
    String result = 'Some error occurred';
    try {
      if (email!.isNotEmpty || name!.isNotEmpty || password!.isNotEmpty) {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: email, password: password!);
        print(user.user!.uid);

        UserModel userModel = UserModel(
          email: email,
          name: name!,
          uid: user.user!.uid,
          area: area!,
        );

        await _firestore.collection('users').doc(user.user!.uid).set(
              userModel.toJson(),
            );
        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<String> signUpNGO({
    required String headOfNgoName,
    required String ngoName,
    required String typeOfDonation,
    required String volunteerCount,
    required String streetAddress,
    required String landmarkAddress,
    required String areaAddress,
    required String cityAddress,
    required String stateAddress,
    required String countryAddress,
    required String postalCode,
    required String email,
    required String password,
  }) async {
    String result = 'Some error occurred';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        UserCredential ngo = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(ngo.user!.uid);
        String ngoId = ngo.user!.uid;
        NGOModel ngoModel = NGOModel(
            email: email,
            headOfNgoName: headOfNgoName,
            ngoId: ngoId,
            ngoName: ngoName,
            typeOfDonation: typeOfDonation,
            volunteerCount: volunteerCount,
            streetAddress: streetAddress,
            landmarkAddress: landmarkAddress,
            areaAddress: areaAddress,
            cityAddress: cityAddress,
            stateAddress: stateAddress,
            countryAddress: countryAddress,
            postalCode: postalCode,
            password: password);

        await _firestore.collection('ngos').doc(ngo.user!.uid).set(
              ngoModel.toJson(),
            );
        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<String> logInUser({
    required String email,
    required String password,
  }) async {
    String result = 'Some error occurred';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
