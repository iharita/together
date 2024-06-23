import 'package:flutter/material.dart';
import 'package:together/app_colors.dart';
import 'package:together/ngo_screens/ngo_profile_screen.dart';
import 'maps_ngo_screen.dart';
import 'history_screen.dart';
import 'package:together/ngo_screens/widgets/no_request_widget.dart';
import 'package:together/ngo_screens/widgets/request_list_widget.dart';

class NGOMainScreen extends StatefulWidget {
  const NGOMainScreen({Key? key}) : super(key: key);

  @override
  State<NGOMainScreen> createState() => _NGOMainScreenState();
}

class _NGOMainScreenState extends State<NGOMainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    NGOHomeScreen(),
    NGOMapScreen(),
    HistoryScreen(),
    NGOProfileScreen()
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
          padding: const EdgeInsets.only(top: 8.0),
          child: _widgetOptions[_selectedIndex],
        ) ,
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
              icon: Icon(Icons.history),
              label: 'History',
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

class NGOHomeScreen extends StatelessWidget {
  const NGOHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<String> arrNames = [
      'Harita Dave',
      'Deep Dave',
       'Harvi Patel',
      'Jeet Gajjar',
      'Harsh Joshi',
       'Prachi Patel',
       'Meena Patil',
       'Raval Pooja',
       'Divya Chauhan',
       'Khushi Shah',
       'Honey Patel'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Donor Requests')),
      ),
      body: Stack(
        children:  [
          RequestListWidget(arrNames),
          if(arrNames.isEmpty)
          const NoRequestWidget(),
        ],
      ),
    );
  }
}