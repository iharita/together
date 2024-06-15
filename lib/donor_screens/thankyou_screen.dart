import 'package:flutter/material.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/app_colors.dart';

class ThankyouScreen extends StatelessWidget {
  const ThankyouScreen({Key? key}) : super(key: key);

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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreenDonor()));
                      },
                      child: const Icon(Icons.arrow_back)),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text("T",
                        style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: primaryColor)),
                  ),
                  Center(
                    child: Text("ogether",
                        style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: blackColor)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "We make a difference",
                  style: TextStyle(fontSize: 20.0, color: blackColor),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 10.0),
                child: Text('Thank to your generous Donation, \n we are able to provide food to \n the community.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Your donation has already \n made a huge impact.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text('THANK YOU!',
                style: TextStyle(fontSize: 24,
                color: primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 120,
                    height: 120,
                    child: Image.asset('assets/images/smiley.png')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
