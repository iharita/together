import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/core/auth_methods.dart';

class DonorSignup extends StatefulWidget {
  const DonorSignup({Key? key}) : super(key: key);

  @override
  State<DonorSignup> createState() => _DonorSignupState();
}

class _DonorSignupState extends State<DonorSignup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: [
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
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
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
                labelText: 'Email Id',
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: TextField(
              controller: areaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Location',
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
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
              obscureText: true,
              controller: confirmPasswordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width - 200,
            height: 60.0,
            onPressed: () async {
              _signUp();
            },
            color: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: isLoading
                ? const CircularProgressIndicator()
                : const Text(
                    "Sign Up",
                    style: TextStyle(color: whiteColor, fontSize: 22),
                  ),
          ),
          const SizedBox(
            height: 40,
          ),
        ]),
      )),
    );
  }

  void _signUp() async {
    setState(() {
      isLoading = true;
    });
    // Logging in the user w/ Firebase
    String result = await AuthMethods().signUpUser(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        area: areaController.text);
    if (result != 'success') {
      final snackBar = SnackBar(content: Text(result));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      //Navigate to success Screen -> Home
      Navigator.pop(context);
    }
    setState(() {
      isLoading = false;
    });
  }
}
