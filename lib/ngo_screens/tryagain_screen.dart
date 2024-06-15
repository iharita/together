import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/ngo_screens/donordetails_screen.dart';

class TryagainScreen extends StatelessWidget {
  const TryagainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Radhika Kotak',
      'Harita Dave',
      'Bhavin Roy',
      'Deep Dave',
      'Jeet Gajjar',
      'Ghanshyam Kotak'
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('DONOR REQUESTS..'),
          backgroundColor: primaryColor,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  arrNames[index],
                  style: const TextStyle(fontSize: 18),
                ),
                trailing: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DonorDetails()));
                        },
                        child: const Text(
                          'Accept',
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Reject',
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
              );
            },
            itemCount: arrNames.length,
            separatorBuilder: (context, index) {
              return const Divider(
                height: 30,
                thickness: 1,
              );
            }),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: 'Maps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ));
  }
}
