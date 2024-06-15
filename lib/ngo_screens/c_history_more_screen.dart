import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';

class CHistoryMoreScreen extends StatelessWidget {
  const CHistoryMoreScreen({Key? key}) : super(key: key);

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
                    'Name: Bhavin Roy \nMobile No: +91 9483928393 \n'
                        'Address: 501 Arihant Society, Krushnabag, Ghuma',
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
                    'Type of Food: \n- Mix Sabzi \n- Rice \n- Dal \n- Frymes \n- Dhokla \n \n'
                        'Quantity of Food: \n- 8 KG \n \n'
                        'Number of people can eat: \n- 15',
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
                    'Bhargav Desai \nShraddha Kid Care (NGO)',
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
