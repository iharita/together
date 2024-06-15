import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/signup_screens/donor_signup.dart';
import 'package:together/signup_screens/ngo_signup.dart';

class SignupOptions extends StatelessWidget {
  const SignupOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Icon(Icons.arrow_back),
                    )),
              ],
            ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DonorSignup()));
              },
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text(
                "Sign Up as Donor",
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NGOSignup()));
              },
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text(
                "Sign Up as NGO",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 22
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
