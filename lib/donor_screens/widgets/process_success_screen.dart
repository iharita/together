import 'dart:async';

import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/donor_screens/process_success_detail_screen.dart';

class ProcessSuccessScreen extends StatelessWidget {
  const ProcessSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          // builder: (BuildContext context) => SelectTechnology())));
            builder: (BuildContext context) => const ProcessSuccessDetailScreen())));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width,),
              const Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.green,
                size: 120,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Request Accepted',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Your request is accepted. Volunteer will be at your place shortly.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
