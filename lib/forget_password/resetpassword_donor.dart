import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/login_screens/donor_login.dart';

class ResetDonor extends StatelessWidget {
  const ResetDonor({Key? key}) : super(key: key);

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
              height: 60,
            ),
            const Center(
              child: Text("Reset your password!",
                style: TextStyle(fontSize: 25.0, color: blackColor),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm new Password',
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DonorLogin()));
              },
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text(
                "Reset",
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
