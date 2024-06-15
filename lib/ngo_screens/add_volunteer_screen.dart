import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/ngo_screens/ngo_profile_screen.dart';

class AddVolunteerScreen extends StatelessWidget {
  const AddVolunteerScreen({Key? key}) : super(key: key);

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
                height: 150,
              ),
              const Text(
                'ADD VOLUNTEER DETAILS',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Volunteer Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile No',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Area',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 200,
                height: 60.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NGOProfileScreen()));
                },
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "ADD",
                  style: TextStyle(color: whiteColor, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
