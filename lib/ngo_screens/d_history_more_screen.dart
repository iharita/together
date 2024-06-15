import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';


class DHistoryMoreScreen extends StatelessWidget {
  const DHistoryMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Name: Harvi Patel \nMobile No: +91 7283947294 \n'
                        'Address: Shiv Appartment, Shukan Mall, Science city',
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
                    'Type of Food: \n- Khichdi \n- Kadhi \n- Buttermilk \n \n'
                        'Quantity of Food: \n- 12 KG \n \n'
                        'Number of people can eat: \n- 25',
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
                    'Tushar Jain \nShraddha Kid Care (NGO)',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
