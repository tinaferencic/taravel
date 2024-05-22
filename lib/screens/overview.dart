import 'package:flutter/material.dart';
import 'title.dart';
import 'plans.dart';

class OverviewScreen extends StatelessWidget {
  final String title;
   OverviewScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF7FAF8),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(18, 63, 18, 22),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TitleScreen()),
                          );
                        },
                        child: const SizedBox(
                          width: 18.7,
                          height: 18.7,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Overview',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          height: 0.8,
                          letterSpacing: 0.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 17, 20),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Rovinj fun trip',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    height: 1,
                    letterSpacing: 0.3,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
               margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 10),
                      Text(
                        'Rovinj, Croatia',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.4,
                          letterSpacing: 0.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 10),
                      Text(
                        '09 June, 2024',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.4,
                          letterSpacing: 0.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 10),
                      Text(
                        '50€',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.4,
                          letterSpacing: 0.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                    SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.interests),
                      SizedBox(width: 10),
                      Text(
                        'Museums, Restaurants, Festivals',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.4,
                          letterSpacing: 0.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
         Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PlansScreen()),
    );
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE15A37),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 264,
                padding: const EdgeInsets.fromLTRB(95, 13, 0, 13),
                child: 
                const Text(
                  'Plan Trip',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    height: 1.3,
                    letterSpacing: 0.3,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}