import 'package:flutter/material.dart';
import 'package:together/donor_screens/donatefood_screen.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Donation Types:',
                style: TextStyle(fontSize: 22,),),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const FoodDonate()));
                },
                child: Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.food_bank),
                        SizedBox(width: 10,),
                        Text('FOOD DONATION',
                          style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  )
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.book),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Text('EDUCATIONAL DONATION',
                            style: TextStyle(fontSize: 20),),
                        ),
                      ],
                    ),
                  )
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.person),
                        SizedBox(width: 10,),
                        Text('CLOTH DONATION',
                          style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  )
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.attach_money),
                        SizedBox(width: 10,),
                        Text('MONEY DONATION',
                          style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  )
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      children: const [
                        Icon(Icons.bloodtype),
                        SizedBox(width: 10,),
                        Text('BLOOD DONATION',
                          style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
