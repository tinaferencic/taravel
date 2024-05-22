import 'package:flutter/material.dart';
import 'plans.dart';
import 'search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 17),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF7FAF8),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(18, 63, 18, 22),
                  child: Container(
                    child: const Text(
                      'Home',
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
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: const Text(
                    'Upcoming',
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
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity, 
                  height: 200, 
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 1), 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), 
                    child: Image.asset(
                      'assets/images/zagreb.jpg',
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20, 
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5), 
                    child: const Text(
                      'Zagreb weekend',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        height: 1.3,
                        letterSpacing: 0.3,
                        color: Colors.white, 
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 50, 0, 21),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Popular',
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
                    const Text(
                      'Frequently visited by other travelers.',
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
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/varazdin.jpeg',
                      width: 115,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Varaždin',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/samobor.jpeg',
                      width: 115,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Samobor',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/zadar.jpeg',
                      width: 115,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Zadar',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recommended',
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
                  Padding(
  padding: const EdgeInsets.only(left: 20.0), // Adjust the left margin as needed
  child: const Text(
    'These recommendations are based on your recent trip history.',
    style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.4,
      letterSpacing: 0.3,
      color: Color(0xFF000000),
    ),
  ),
),

                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/varazdin.jpeg',
                      width: 115,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Varaždin',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/samobor.jpeg',
                      width: 115,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Samobor',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/zadar.jpeg',
                      width: 115,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Zadar',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
                ],
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
          if (index == 2) {
           
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PlansScreen())
            );
          }
          else if (index == 1) {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen())
            );
          }
        
        }
      ),
    );
  }
}
