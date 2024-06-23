import 'package:flutter/material.dart';
import 'package:together/ngo_screens/donordetails_screen.dart';

class RequestListWidget extends StatelessWidget {
  const RequestListWidget(this.arrNames, {Key? key}) : super(key: key);
  final List<String> arrNames;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                arrNames[index],
                style: const TextStyle(fontSize: 18),
              ),
              trailing: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DonorDetails()));
                      },
                      child: const Text(
                        'view',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      )),

                ],
              ),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 25,
              thickness: 1,
            );
          }),
    );
  }
}
