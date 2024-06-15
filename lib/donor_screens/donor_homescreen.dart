import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/donor_screens/a_more_screen.dart';
import 'package:together/donor_screens/b_more_screen.dart';
import 'package:together/donor_screens/maps_screen.dart';
import 'package:together/donor_screens/more_screen.dart';
import 'package:together/donor_screens/profile_screen.dart';
import 'donate_screen.dart';

class HomeScreenDonor extends StatefulWidget {
  const HomeScreenDonor({Key? key}) : super(key: key);

  @override
  State<HomeScreenDonor> createState() => _HomeScreenDonorState();
}

class _HomeScreenDonorState extends State<HomeScreenDonor> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DonorHomeScreen(),
    MapScreen(),
    DonateScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _widgetOptions[_selectedIndex]
        ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: (index){
              _onItemTapped(index);
            },
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
                icon: Icon(Icons.card_giftcard),
                label: 'Donate',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          )
      ),
    );
  }
}
class DonorHomeScreen extends StatelessWidget {
  const DonorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton( icon: const Icon(Icons.search), onPressed: () {},),
              border: const OutlineInputBorder(),
              labelText: 'Search NGOs here',
            ),
          ),
          const SizedBox(height: 10,),
          Card(
            color: Colors.grey.shade200,
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('According to the FSSAI, one-third of all food in India is wasted or gets spoilt before '
                  'it is eatern. According to the UNEP Food Wastage Index Report 2021, household food waste '
                  'in India is estimated to be around 50 kg per person annually, or 68.76 million tonnes.',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                children: [
                  const Text('Shraddha Kid Care (NGO) \n +91 7453235436',
                    style: TextStyle(fontSize: 18),),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreScreen()));
                    },
                    child: const Text('more',
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                children: [
                  const Text('Atul Foundation (NGO) \n +91 9464237536',
                    style: TextStyle(fontSize: 18),),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AMoreScreen()));
                    },
                    child: const Text('more',
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                children: [
                  const Text('Visamo Foundation (NGO) \n +91 8637562746',
                    style: TextStyle(fontSize: 18,),),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const BMoreScreen()));
                    },
                    child: const Text('more',
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                children: [
                  const Text('Nishchay Foundation (NGO) \n +91 9356235436',
                    style: TextStyle(fontSize: 18),),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreScreen()));
                    },
                    child: const Text('more',
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Card(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                children: [
                  const Text('Save Life (NGO) \n +91 7957483226',
                    style: TextStyle(fontSize: 18),),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreScreen()));
                    },
                    child: const Text('more',
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
