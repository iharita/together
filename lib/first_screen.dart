import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/login_screens/login_options.dart';
import 'package:together/ngo_screens/ngo_main_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState()  {
    super.initState();
     checkAndRedirect();
  }

  Future<void> checkAndRedirect() async {
     if (FirebaseAuth.instance.currentUser == null) {
    } else {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      if (uid != null) {
        if (await documentExistsInCollection('users', uid)) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreenDonor()));
        }
        if (await documentExistsInCollection('ngos', uid)) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NGOHomeScreen()));
        }
      }
    }
  }

  Future<bool> documentExistsInCollection(
      String collectionName, String docId) async {
    try {
      var doc = await FirebaseFirestore.instance
          .collection(collectionName)
          .doc(docId)
          .get();
      return doc.exists;
    } catch (e) {
      // throw e;
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Spacer(),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("T",
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: blackColor)),
                ),
                Center(
                  child: Text("ogether",
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: whiteColor)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "We make a difference",
                style: TextStyle(fontSize: 20.0, color: whiteColor),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 80,
                height: 60.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginOptions()));
                },
                color: whiteColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: primaryColor, fontSize: 22),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
