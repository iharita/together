import 'package:flutter/material.dart';
import 'package:together/ngo_screens/a_history_more_screen.dart';
import 'package:together/ngo_screens/b_history_more_screen.dart';
import 'package:together/ngo_screens/c_history_more_screen.dart';
import 'package:together/ngo_screens/d_history_more_screen.dart';
import 'package:together/ngo_screens/e_history_more_screen.dart';
import 'package:together/ngo_screens/history_more_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  final List<Map<String, String>> _donors = [
    {'name': 'Radhika Kotak', 'phone': '+91 7453235436', 'screen': 'AHistoryMoreScreen'},
    {'name': 'Deep Dave', 'phone': '+91 9464237536', 'screen': 'BHistoryMoreScreen'},
    {'name': 'Bhavin Roy', 'phone': '+91 8637562746', 'screen': 'CHistoryMoreScreen'},
    {'name': 'Harita Dave', 'phone': '+91 9356235436', 'screen': 'HistoryMoreScreen'},
    {'name': 'Harvi Patel', 'phone': '+91 7957483226', 'screen': 'DHistoryMoreScreen'},
    {'name': 'Jeet Gajjar', 'phone': '+91 9464237536', 'screen': 'EHistoryMoreScreen'},
    {'name': 'Ghanshyam Kotak', 'phone': '+91 9464237536', 'screen': ''},
    {'name': 'Prachi Patel', 'phone': '+91 8637562746', 'screen': ''},
    {'name': 'Tejil Shah', 'phone': '+91 9356235436', 'screen': ''},
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text.toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Map<String, String>> _getFilteredDonors() {
    if (_searchText.isEmpty) {
      return _donors;
    }
    return _donors
        .where((donor) =>
    donor['name']!.toLowerCase().contains(_searchText) ||
        donor['phone']!.toLowerCase().contains(_searchText))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredDonors = _getFilteredDonors();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Search Donors here',
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'DONORS HISTORY',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              ...filteredDonors.map((donor) => Card(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        '${donor['name']} \n ${donor['phone']}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          final screenName = donor['screen']!;
                          if (screenName.isNotEmpty) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => getScreenByName(screenName),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'more',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget getScreenByName(String screenName) {
    switch (screenName) {
      case 'AHistoryMoreScreen':
        return const AHistoryMoreScreen();
      case 'BHistoryMoreScreen':
        return const BHistoryMoreScreen();
      case 'CHistoryMoreScreen':
        return const CHistoryMoreScreen();
      case 'DHistoryMoreScreen':
        return const DHistoryMoreScreen();
      case 'EHistoryMoreScreen':
        return const EHistoryMoreScreen();
      case 'HistoryMoreScreen':
        return const HistoryMoreScreen();
      default:
        return const Scaffold(
          body: Center(
            child: Text('No screen found'),
          ),
        );
    }
  }
}
