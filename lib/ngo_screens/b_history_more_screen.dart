import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';

class BHistoryMoreScreen extends StatelessWidget {
  const BHistoryMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Donor History'),
          backgroundColor: primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                color: Colors.grey.shade200,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text(
                      'Name: Deep Dave \nMobile No: +91 7283947294 \n'
                      'Address: 04 Swati Bunglows, opposite Sunshine college, Bopal',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey.shade200,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text(
                      'Type of Food: \n-  Paneer Sabzi \n- Roti \n- Rice \n- Dal Fry \n- Frymes \n- Dosa \n- Samosa \n \n'
                      'Quantity of Food: \n- 5 KG \n \n'
                      'Number of people can eat: \n- 10',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey.shade200,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text(
                      'Jay Savalia \nShraddha Kid Care (NGO)',
                      style: TextStyle(fontSize: 18),
                    ),
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
