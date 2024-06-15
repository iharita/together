import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';

class HistoryMoreScreen extends StatelessWidget {
  const HistoryMoreScreen({Key? key}) : super(key: key);

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
                    padding:
                    EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text(
                      'Name: Harita Dave \nMobile No: +91 8472846372 \n'
                          'Address: A-22 Samved bunglows, Kankaria, Ahmedabad \n'
                          'Landmark: Opposite Dalal Colony Gate Number 2',
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
                    padding:
                    EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text(
                      'Type of Food: \n- Dal \n- Roti \n- Rice \n \n'
                          'Quantity of Food: \n- 10 KG \n \n'
                          'Number of people can eat: \n- 40',
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
                    padding:
                    EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text('Kevin Patel \nShraddha Kid Care (NGO)',
                      style: TextStyle(fontSize: 18),),
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
