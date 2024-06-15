import 'package:flutter/material.dart';
import 'package:together/donor_screens/donor_homescreen.dart';

class ProcessResponseScreen extends StatelessWidget {
  const ProcessResponseScreen({Key? key}) : super(key: key);

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
                      child: const Icon(Icons.arrow_back,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
