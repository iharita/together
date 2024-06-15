import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:together/first_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: [
                  Text('PROFILE DETAILS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(onPressed: (){

                    showAlertDialog(context);
                  }, icon: Icon(Icons.power_settings_new_sharp))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: Colors.grey.shade200,
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Text('Name: Harita Dave \nMobile No: +91 8472846372 \nArea: Kankaria, Ahmedabad',
                    style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('HISTORY',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Shraddha Kid Care (NGO) \n +91 7453235436',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                          width: double.infinity,
                      ),
                      Text('VOLUNTEER NAME:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('Rajesh Patel \n +91 9886856479',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Atul Foundation (NGO) \n +91 9464237536',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                        width: double.infinity,
                      ),
                      Text('VOLUNTEER NAME:',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('Deep Parikh \n +91 9856758499',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed:  () {
        Navigator.pop(context);
        FirebaseAuth.instance.signOut();
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const FirstScreen()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Logout"),
      content: Text("Are you sure want to logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}
