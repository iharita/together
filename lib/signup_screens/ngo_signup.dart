import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/core/auth_methods.dart';
import 'package:together/ngo_screens/ngo_main_screen.dart';

class NGOSignup extends StatefulWidget {
  const NGOSignup({Key? key}) : super(key: key);

  @override
  State<NGOSignup> createState() => _NGOSignupState();
}

class _NGOSignupState extends State<NGOSignup> {
  TextEditingController ngoNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController headOfNgoNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController typeOfDonationController = TextEditingController();
  TextEditingController volunteerCountController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController landmarkAddressController = TextEditingController();
  TextEditingController areaAddressController = TextEditingController();
  TextEditingController cityAddressController = TextEditingController();
  TextEditingController stateAddressController = TextEditingController();
  TextEditingController countryAddressController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  bool isLoading = false;

  String? valueChoose;
  List listItem = [
    "0-10 volunteers",
    "10-20 volunteers",
    "20-30 volunteers",
    "30+ volunteers"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Icon(Icons.arrow_back),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text("T",
                        style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: primaryColor)),
                  ),
                  Center(
                    child: Text("ogether",
                        style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: blackColor)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "We make a difference",
                  style: TextStyle(fontSize: 20.0, color: blackColor),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 35.0, color: blackColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: ngoNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'NGO Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email id.',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: headOfNgoNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Head of NGO',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: typeOfDonationController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type of Donation',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: DropdownButton(
                  hint: const Text('Select No. of Volunteers'),
                  dropdownColor: Colors.grey.shade200,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  style: const TextStyle(color: blackColor, fontSize: 16),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue as String;
                      volunteerCountController.text = valueChoose.toString();
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: streetAddressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Street',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: landmarkAddressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Landmark',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: areaAddressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Area',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: cityAddressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'City',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: stateAddressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'State',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: countryAddressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Country',
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: postalCodeController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Postal Code',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 200,
                height: 60.0,
                onPressed: () {
                  _signUp();
                },
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: whiteColor, fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    setState(() {
      isLoading = true;
    });
    // Logging in the user w/ Firebase
    String result = await AuthMethods().signUpNGO(
        email: emailController.text,
        headOfNgoName: headOfNgoNameController.text,
        ngoName: ngoNameController.text,
        typeOfDonation: typeOfDonationController.text,
        volunteerCount: volunteerCountController.text,
        streetAddress: streetAddressController.text,
        landmarkAddress: landmarkAddressController.text,
        areaAddress: areaAddressController.text,
        cityAddress: cityAddressController.text,
        stateAddress: stateAddressController.text,
        countryAddress: countryAddressController.text,
        postalCode: postalCodeController.text,
        password: passwordController.text);
    setState(() {
      isLoading = false;
    });
    if (result != 'success') {
      final snackBar = SnackBar(content: Text(result));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      //Navigate to success Screen -> Home
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NGOMainScreen()));
    }
  }
}
