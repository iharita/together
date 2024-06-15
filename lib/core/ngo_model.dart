import 'package:cloud_firestore/cloud_firestore.dart';

class NGOModel{
  final String email;
  final String headOfNgoName;
  final String ngoId;
  final String ngoName;
  final String typeOfDonation;
  final String volunteerCount;
  final String streetAddress;
  final String landmarkAddress;
  final String areaAddress;
  final String cityAddress;
  final String stateAddress;
  final String countryAddress;
  final String postalCode;
  final String password;


  NGOModel(
      {required this.email,
        required this.headOfNgoName,
        required this.ngoName,
        required this.ngoId,
        required this.typeOfDonation,
        required this.volunteerCount,
        required this.streetAddress,
        required this.landmarkAddress,
        required this.areaAddress,
        required this.cityAddress,
        required this.stateAddress,
        required this.countryAddress,
        required this.postalCode,
        required this.password,
      });

  Map<String, dynamic> toJson() => {
    "email": email,
    "head_of_ngo_name": headOfNgoName,
    "ngo_name": ngoName,
    "ngo_id": ngoId,
   "type_of_donation": typeOfDonation,
    "volunteer_count":volunteerCount,
    "street_address":streetAddress,
    "landmark_address":landmarkAddress,
    "area_address":areaAddress,
    "city_address":cityAddress,
    "state_address":stateAddress,
    "country_address":countryAddress,
    "postal_code":postalCode,
    "password":password
  };

  static NGOModel? fromSnap (DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return NGOModel(
      email: snapshot['email'],
      ngoId: snapshot['ngo_id'],
      headOfNgoName:snapshot['head_of_ngo_name'],
      ngoName:snapshot['ngo_name'],
      typeOfDonation:snapshot['type_of_donation'],
      volunteerCount:snapshot['volunteer_count'],
      streetAddress:snapshot['street_address'],
      landmarkAddress:snapshot['landmark_address'],
      areaAddress:snapshot['area_address'],
      cityAddress:snapshot['city_address'],
      stateAddress:snapshot['state_address'],
      countryAddress:snapshot['country_address'],
      postalCode:snapshot['postal_code'],
      password:snapshot['password'],
    );
  }
}