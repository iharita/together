import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/donor_homescreen.dart';


class ProcessSuccessDetailScreen extends StatelessWidget {
  const ProcessSuccessDetailScreen({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.check_circle_outline_rounded,color: Colors.green,size: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Request Accepted',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Your request is accepted and volunteer will be at your place shortly.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('  Volunteer Detail',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(
                      children: const [
                        Text('Kevin Patel \nShraddha Kid Care (NGO)',
                          style: TextStyle(fontSize: 18),),
                        Spacer(),
                        Icon(Icons.call)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
