import 'package:flutter/material.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/process_screen.dart';

class ProcessFailScreen extends StatelessWidget {
  const ProcessFailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreenDonor()));
                      },
                      child: const Icon(Icons.arrow_back,)
                  ),
                ],
              ),
              const SizedBox(
                height: 160,
              ),
              const Text('Sorry for the inconveinence',
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.error_outline, color: Colors.orange, size: 110,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Not Accepted',
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Your request is not accepted due to \n'
                  '        unavailability of volunteers.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 130,
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width-40,
                height: 60.0,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ProcessScreen()));
                },
                color: primaryLightColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Text(
                  "Resend Request",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 22
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width-40,
                height: 60.0,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreenDonor()));
                },
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Text(
                  "Back to Home",
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
