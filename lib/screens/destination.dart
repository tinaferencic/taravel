import 'package:flutter/material.dart';
import 'plans.dart';
import 'date.dart';

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
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
            MaterialPageRoute(builder: (context) => const PlansScreen()),
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
                        'Destination',
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
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text(
                'Enter the destination city or specific location where you\'ll be traveling to. This sets the foundation for your personalized travel plan.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.4,
                  letterSpacing: 0.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Opacity(
              opacity: 0.7,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 11,
                      height: 13.8,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Search destinations',
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.4,
                          letterSpacing: -0.4,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), 
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DateScreen()),
          );
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(18, 0, 18, 19),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE15A37),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 350,
              height: 46,
              padding: const EdgeInsets.fromLTRB(150, 13, 0, 13),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: const SizedBox(
                  width: 28,
                  height: 28,
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      height: 1.3,
                      letterSpacing: 0.3,
                      color: Color(0xFFFFFFFF),
                    )
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