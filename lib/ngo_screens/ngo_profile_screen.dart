import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/first_screen.dart';
import 'package:together/ngo_screens/add_volunteer_screen.dart';

class NGOProfileScreen extends StatefulWidget {
  const NGOProfileScreen({Key? key}) : super(key: key);

  @override
  State<NGOProfileScreen> createState() => _NGOProfileScreenState();
}

class _NGOProfileScreenState extends State<NGOProfileScreen> {
  List<Map<String, String>> volunteers = [
    {'name': 'Rajesh Patel', 'mobile': '+91 9886856479', 'area': 'Kankaria'},
    {'name': 'Parambhai Sharma', 'mobile': '+91 8623856479', 'area': 'Gota'},
    {'name': 'Paras Chotai', 'mobile': '+91 9886834569', 'area': 'Vastral'},
    {'name': 'Ilesh Devani', 'mobile': '+91 9364836479', 'area': 'Prahladnagar'},
    {'name': 'Kamleshbhai Parikh', 'mobile': '+91 7246224579', 'area': 'Maninagar'},
    {'name': 'Preet Parmar', 'mobile': '+91 8566456479', 'area': 'Zundal'},
    {'name': 'Abhay Chauhan', 'mobile': '+91 9765326479', 'area': 'Tragad'},
    {'name': 'Arnav Prajapati', 'mobile': '+91 8346583421', 'area': 'Vastrapur'},
    {'name': 'Raj Patel', 'mobile': '+91 9943786479', 'area': 'Thaltej'},
  ];

  void addVolunteer(Map<String, String> volunteer) {
    setState(() {
      volunteers.add(volunteer);
    });
  }

  showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes"),
      onPressed: () {
        Navigator.pop(context);
        FirebaseAuth.instance.signOut();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const FirstScreen()));
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Logout"),
      content: Text("Are you sure want to logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'PROFILE DETAILS',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        icon: Icon(Icons.power_settings_new_sharp))
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
                      child: Text(
                        'Name: Shraddha Kid Care (NGO) \n'
                            'Mobile No: +91 7453235436 \n'
                            'Head Of NGO: Rajeshbhai Patel \n'
                            'Type Of Donation: 1. FOOD \n'
                            '2. CLOTHES \n'
                            '3. MONEY \n'
                            '4. BOOKS FOR EDUCATION \n'
                            '5. GROCERY \n'
                            '6. BLOOD \n'
                            '7. TIME \n \n'
                            'No. of Volunteers: 30+ Volunteers\n'
                            'Address: Vrundavan Road, opposite Ketul Bunglows, Kankaria, Ahmedabad 380 008 ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'VOLUNTEERS LIST',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () async {
                        final newVolunteer = await Navigator.push<Map<String, String>>(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddVolunteerScreen()),
                        );
                        if (newVolunteer != null) {
                          addVolunteer(newVolunteer);
                        }
                      },
                      child: Icon(
                        Icons.add,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                ...volunteers.map((volunteer) {
                  return Card(
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Volunteer Name: ${volunteer['name']} \nMobile No: ${volunteer['mobile']} \nArea: ${volunteer['area']}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
