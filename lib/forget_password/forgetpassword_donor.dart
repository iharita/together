import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/forget_password/otp_donor.dart';

class ForgetDonor extends StatelessWidget {
  const ForgetDonor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Mobile No.',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width-200,
              height: 60.0,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const OTPDonor()));
              },
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 22
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
