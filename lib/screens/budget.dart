import 'package:flutter/material.dart';
import 'interests.dart';
import 'title.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

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
                            MaterialPageRoute(builder: (context) => const InterestScreen()),
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
                        'Budget',
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
                'Set your budget for the trip to help us recommend activities that align with your financial preferences.',
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
            Center( 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), 
                child: Opacity(
                  opacity: 0.7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14), 
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 11,
                          height: 13.8,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center, 
                            decoration: InputDecoration(
                              hintText: '0 €',
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24, 
                              height: 1.2, 
                              letterSpacing: -0.4,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TitleScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 150, 10), 
              child: Text(
                'Skip for now',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFFE15A37),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TitleScreen()),
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
                        ),
                      ), 
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
