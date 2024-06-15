import 'package:flutter/material.dart';

class AMoreScreen extends StatelessWidget {
  const AMoreScreen({Key? key}) : super(key: key);

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
                const Text('Atul Foundation NGO \n +91 9464237536',
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
                    Text('Mahendrabhai Vyas',
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
                      '3. BOOKS FOR EDUCATION \n'
                      '4. GROCERY \n',
                    style: TextStyle(fontSize: 18),),
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('0-10 volunteers are working with us.',
                    style: TextStyle(fontSize: 18),),
                ),
                const SizedBox(height: 20,),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('ADDRESS:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
                const Text('Takshshila Appartment, opposite Baghban Party plot, Thaltej, Ahmedabad 380 016',
                  style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
        )
    );
  }
}
