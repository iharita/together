import 'package:flutter/material.dart';
import 'package:together/ngo_screens/a_history_more_screen.dart';
import 'package:together/ngo_screens/b_history_more_screen.dart';
import 'package:together/ngo_screens/c_history_more_screen.dart';
import 'package:together/ngo_screens/d_history_more_screen.dart';
import 'package:together/ngo_screens/e_history_more_screen.dart';
import 'package:together/ngo_screens/history_more_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton( icon: const Icon(Icons.search), onPressed: () {},),
                  border: const OutlineInputBorder(),
                  labelText: 'Search Donors Name here',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('DONORS HISTORY',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 12,
              ),
              Card(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Row(
                    children: [
                      const Text('Radhika Kotak \n +91 7453235436',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AHistoryMoreScreen()));
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
                      const Text('Deep Dave \n +91 9464237536',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const BHistoryMoreScreen()));
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
                      const Text('Bhavin Roy \n +91 8637562746',
                        style: TextStyle(fontSize: 18,),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const CHistoryMoreScreen()));
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
                      const Text('Harita Dave \n +91 9356235436',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HistoryMoreScreen()));
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
                      const Text('Harvi Patel \n +91 7957483226',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const DHistoryMoreScreen()));
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
                      const Text('Jeet Gajjar \n +91 9464237536',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const EHistoryMoreScreen()));
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
                      const Text('Ghanshyam Kotak \n +91 9464237536',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreScreen()));
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
                      const Text('Prachi Patel \n +91 8637562746',
                        style: TextStyle(fontSize: 18,),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreScreen()));
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
                      const Text('Tejil Shah \n +91 9356235436',
                        style: TextStyle(fontSize: 18),),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> const MoreScreen()));
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
            ],
          ),
        ),
      ),
    );
  }
}
