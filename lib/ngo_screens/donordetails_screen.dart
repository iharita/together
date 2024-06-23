import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/ngo_screens/accept_request_screen.dart';
import 'package:together/ngo_screens/ngo_main_screen.dart';

class DonorDetails extends StatelessWidget {
  const DonorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Donor Details'),
          ),
          body: SingleChildScrollView(
            child: Padding(
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
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Volunteer Name',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const NGOMainScreen()));
                        },
                        child: const Icon(Icons.close, size:30,color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: Colors.red, // <-- Button color
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AcceptRequestScreen()));
                        },
                        child: const Icon(Icons.check,size: 30, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: primaryColor, // <-- Button color
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
