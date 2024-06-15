import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/ngo_screens/tryagain_screen.dart';

class NoRequestWidget extends StatelessWidget {
  const NoRequestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            height: 50,
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
              "!",
              style: TextStyle(fontSize: 100.0, color: blackColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "NO REQUEST",
              style: TextStyle(fontSize: 35.0, color: blackColor),
            ),
          ),
          const Center(
            child: Text(
              "HERE",
              style: TextStyle(fontSize: 35.0, color: blackColor),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => TryagainScreen()));
            },
            child: const Center(
              child: Text(
                "Try Again!!",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
