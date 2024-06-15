import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/core/auth_methods.dart';
import 'package:together/forget_password/forgetpassword_ngo.dart';
import 'package:together/ngo_screens/ngo_main_screen.dart';
// AIzaSyBhX6jmEaP0hJpGJTrXzYBJmSZrRrhT49w
class NGOLogin extends StatefulWidget {
  const NGOLogin({Key? key}) : super(key: key);

  @override
  State<NGOLogin> createState() => _NGOLoginState();
}

class _NGOLoginState extends State<NGOLogin> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
                height: 60,
              ),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 40.0, color: blackColor),
                ),
              ),
              const SizedBox(
                height: 40,
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
                            builder: (context) => const ForgetNGO()));
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 16.0, color: Colors.red),
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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NGOMainScreen()));
                },
                color: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Login",
                  style: TextStyle(color: whiteColor, fontSize: 22),
                ),
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
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NGOHomeScreen()));
    } else {
      final snackBar = SnackBar(content: Text(result));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    setState(() {
      isLoading = false;
    });
  }
}
