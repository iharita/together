import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/forget_password/resetpassword_donor.dart';

class OTPDonor extends StatelessWidget {
  const OTPDonor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
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
                height: 80,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 30.0),
                  child: Text(
                    "We have sent an OTP to \n   number ending with \n        +91 ***** ***91",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter OTP here',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResetDonor()));
                },
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 22
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
