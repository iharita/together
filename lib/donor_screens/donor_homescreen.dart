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
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: (index) {
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
        ),
      ),
    );
  }
}

class DonorHomeScreen extends StatefulWidget {
  const DonorHomeScreen({Key? key}) : super(key: key);

  @override
  State<DonorHomeScreen> createState() => _DonorHomeScreenState();
}

class _DonorHomeScreenState extends State<DonorHomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  final List<Map<String, String>> _ngos = [
    {'name': 'Shraddha Kid Care (NGO)', 'phone': '+91 7453235436', 'screen': 'MoreScreen'},
    {'name': 'Atul Foundation (NGO)', 'phone': '+91 9464237536', 'screen': 'AMoreScreen'},
    {'name': 'Visamo Foundation (NGO)', 'phone': '+91 8637562746', 'screen': 'BMoreScreen'},
    {'name': 'Nishchay Foundation (NGO)', 'phone': '+91 9356235436', 'screen': 'MoreScreen'},
    {'name': 'Save Life (NGO)', 'phone': '+91 7957483226', 'screen': 'MoreScreen'},
    {'name': 'Blue Birds Social Welfare (NGO)', 'phone': '+91 9372841436', 'screen': 'MoreScreen'},
    {'name': 'Ganga Social Foundation (NGO)', 'phone': '+91 8537235436', 'screen': 'MoreScreen'},
    {'name': 'Mother of Life Trust (NGO)', 'phone': '+91 9365285436', 'screen': 'MoreScreen'},
    {'name': 'Kriti Foundation (NGO)', 'phone': '+91 9356287357', 'screen': 'MoreScreen'},
    {'name': 'Dev Jyoti Foundation (NGO)', 'phone': '+91 9928437183', 'screen': 'MoreScreen'},
    {'name': 'Rising Initiative Foundation (NGO)', 'phone': '+91 7878235436', 'screen': 'MoreScreen'},
  ];

  List<Map<String, String>> get _filteredNgos {
    if (_searchQuery.isEmpty) {
      return _ngos;
    }
    return _ngos
        .where((ngo) => ngo['name']!.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }

  void _onSearchChanged() {
    setState(() {
      _searchQuery = _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('NGO\'S')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                border: const OutlineInputBorder(),
                hintText: 'Search NGOs here'
              ),
              onChanged: (value) {
                _onSearchChanged();
              },
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.grey.shade200,
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'According to the FSSAI, one-third of all food in India is wasted or gets spoilt before '
                      'it is eaten. According to the UNEP Food Wastage Index Report 2021, household food waste '
                      'in India is estimated to be around 50 kg per person annually, or 68.76 million tonnes.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 12),
            ..._filteredNgos.map((ngo) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    child: Row(
                      children: [
                        Text(
                          '${ngo['name']} \n ${ngo['phone']}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            String screen = ngo['screen']!;
                            if (screen == 'MoreScreen') {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const MoreScreen()));
                            } else if (screen == 'AMoreScreen') {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const AMoreScreen()));
                            } else if (screen == 'BMoreScreen') {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const BMoreScreen()));
                            }
                          },
                          child: const Text(
                            'more',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
