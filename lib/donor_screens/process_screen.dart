import 'dart:async';

import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/donor_screens/widgets/process_fail_screen.dart';
import 'package:together/donor_screens/widgets/process_success_screen.dart';
import 'process_response.dart';

class ProcessScreen extends StatelessWidget {
  const ProcessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          // builder: (BuildContext context) => SelectTechnology())));
            builder: (BuildContext context) => const ProcessSuccessScreen())));

    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: whiteColor)),
                ],
              ),
              const SizedBox(
                height: 220,
              ),
              const SizedBox(
                height: 70,
                width: 70,
                child: CircularProgressIndicator(
                  color: whiteColor,
                  strokeWidth: 7,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Processing',
                style: TextStyle(fontSize: 22, color: whiteColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text('Your donation request is processing and \n'
                    '         will be accepted by NGO soon',
                  style: TextStyle(fontSize: 18, color: whiteColor),
                ),
              ),
              const SizedBox(
                height: 170,
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
                  "Cancel Request",
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