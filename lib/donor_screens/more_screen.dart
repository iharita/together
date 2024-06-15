import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Shraddha Kid Care NGO \n +91 7453235436',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text('Head of NGO:',
                    style: TextStyle(fontSize: 20),),
                    SizedBox(width: 5,),
                    Text('Rajeshbhai Patel',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text('Hello Donor, \nWe started our NGO for all the kids so that they do not suffer from'
                    'starvation, and live a happy life.',
                style: TextStyle(fontSize: 18),),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('We collect many donations like: \n'
                      '1. FOOD \n'
                      '2. CLOTHES \n'
                      '3. MONEY \n'
                      '4. BOOKS FOR EDUCATION \n'
                      '5. GROCERY \n'
                      '6. BLOOD \n'
                      '7. TIME',
                    style: TextStyle(fontSize: 18),),
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('30+ volunteers are working with us.',
                    style: TextStyle(fontSize: 18),),
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('ADDRESS:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
                const Text('Vrundavan Road, opposite Ketul Bunglows, Kankaria, Ahmedabad 380 008 ',
                  style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
