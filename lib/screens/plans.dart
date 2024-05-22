import 'package:flutter/material.dart';
import 'destination.dart';
import 'home_screen.dart';
import 'search.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

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
                  child: Container(
                    child: const Text(
                      'Plans',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 0.8,
                        letterSpacing: 0.3,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 44.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.5, 10, 0.5),
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFD2D2D7),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(11.6, 4, 0, 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 4.1, 6.9, 4.1),
                                  width: 13.8,
                                  height: 13.8,
                                ),
                                Container(
                                  child: const Text(
                                    'Search',
                                    style: TextStyle(
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
                      ),
                    ),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: 0.5,
                      child: Container(
                        width: 100, 
                        decoration: BoxDecoration(
                          color: const Color(0xFFD2D2D7),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(19.6, 4.5, 19.6, 4.5),
                          child: const Text(
                            'Sort',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.4,
                              letterSpacing: -0.4,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 22.6, 0),
              child: const Text(
                'Nothing yet? Get started with your newest adventure by clicking the + button.',
                style: TextStyle(
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, 
        selectedItemColor: const Color(0xFFE15A37), 
        unselectedItemColor: const Color.fromARGB(255, 137, 136, 136),
        selectedFontSize: 10, 
        unselectedFontSize: 10, 
        currentIndex: 2, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Plans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
         onTap: (int index) {
          if (index == 0) {
           
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen())
            );
          }
          else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen())
            );
          }
        },
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DestinationScreen()), 
          );
        },
        child: Container(
          margin: const EdgeInsets.fromLTRB(18, 0, 18, 19),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE15A37),
              borderRadius: BorderRadius.circular(33),
            ),
            child: Container(
              width: 66,
              height: 66,
              padding: const EdgeInsets.all(19),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: const SizedBox(
                  width: 28,
                  height: 28,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
