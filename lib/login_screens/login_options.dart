import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/login_screens/donor_login.dart';
import 'package:together/login_screens/ngo_login.dart';
import 'package:together/ngo_screens/ngo_main_screen.dart';
import 'package:together/signup_screens/signup_options.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Text("T",
                      style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, color: primaryColor)
                  ),
                ),
                Center(
                  child: Text("ogether",
                      style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, color: blackColor)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text("We make a difference",
                style: TextStyle(fontSize: 20.0, color: blackColor),
              ),
            ),
           const Spacer(),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width-80,
              height: 60.0,
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreenDonor()));
              },
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text(
                "Login as Donor",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 22
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width-80,
              height: 60.0,
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const NGOMainScreen()));
              },
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text(
                "Login as NGO",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 22
                ),
              ),
            ),
            const Spacer(),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New user?",
                      style: TextStyle(fontSize: 16.0, color: blackColor)
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupOptions()));
                  },
                  child: const Text(" REGISTER NOW",
                      style: TextStyle(fontSize: 16.0, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, color: blackColor)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
