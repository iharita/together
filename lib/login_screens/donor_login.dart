import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/core/auth_methods.dart';
import 'package:together/donor_screens/donor_homescreen.dart';
import 'package:together/forget_password/forgetpassword_donor.dart';
import 'package:together/signup_screens/signup_options.dart';

class DonorLogin extends StatefulWidget {
  const DonorLogin({Key? key}) : super(key: key);

  @override
  State<DonorLogin> createState() => _DonorLoginState();
}

class _DonorLoginState extends State<DonorLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

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
                height: 60,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  "Login",
                  style: TextStyle(fontSize: 40.0, color: blackColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Id.',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetDonor()));
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 16.0, color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 200,
                height: 60.0,
                onPressed: () {
                  _logInUser();

                },
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: isLoading?const CircularProgressIndicator(color: Colors.white,):const Text(
                  "Login",
                  style: TextStyle(color: whiteColor, fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New user?",
                      style: TextStyle(fontSize: 16.0, color: blackColor)
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupOptions()));
                    },
                    child: const Text(" REGISTER NOW",
                        style: TextStyle(fontSize: 16.0, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, color: blackColor)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _logInUser() async {
    // if (emailController.text.isEmpty) {
    //   _showEmptyDialog("Type something");
    // } else if (passwordController.text.isEmpty) {
    //   _showEmptyDialog("Type something");
    // }
    setState(() {
      isLoading = true;
    });
    String result = await AuthMethods().logInUser(
      email: emailController.text,
      password: passwordController.text,
    );
    if (result == 'success') {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const HomeScreenDonor()));
    } else {
      final snackBar = SnackBar(content: Text(result));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    setState(() {
      isLoading = false;
    });
  }
}
