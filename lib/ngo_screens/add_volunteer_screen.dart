import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';

class AddVolunteerScreen extends StatelessWidget {
  const AddVolunteerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController mobileController = TextEditingController();
    final TextEditingController areaController = TextEditingController();

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
                  height: 150,
                ),
                const Text(
                  'ADD VOLUNTEER DETAILS',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Volunteer Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextField(
                    controller: mobileController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile No',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextField(
                    controller: areaController,
                    decoration: const InputDecoration(
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
                    if (nameController.text.isNotEmpty &&
                        mobileController.text.isNotEmpty &&
                        areaController.text.isNotEmpty) {
                      Navigator.pop(context, {
                        'name': nameController.text,
                        'mobile': mobileController.text,
                        'area': areaController.text
                      });
                    }
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
      ),
    );
  }
}
