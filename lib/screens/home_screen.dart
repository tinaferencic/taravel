import 'package:flutter/material.dart';
import 'plans.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF7FAF8),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(18, 63, 18, 22),
                  child: Container(
                    child: Text(
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
              margin: EdgeInsets.fromLTRB(20, 0, 0, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
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
                  width: double.infinity, // Full width of the screen
                  height: 200, // Set height as needed
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1), // Adjust margin
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), // Circular border
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Clip the container with the gradient
                    child: Image.asset(
                      'assets/images/zagreb.jpg',
                      fit: BoxFit.cover, // Cover the whole container
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10, // Adjust the position as needed
                  left: 20, // Adjust the position as needed
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.black.withOpacity(0.5), // Add some opacity to make the text more readable
                    child: Text(
                      'Zagreb weekend',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        height: 1.3,
                        letterSpacing: 0.3,
                        color: Colors.white, // Change to white color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 50, 0, 21),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Align(
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
                    Text(
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
                    SizedBox(height: 5),
                    Text(
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
                    SizedBox(height: 5),
                    Text(
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
                    SizedBox(height: 5),
                    Text(
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
              margin: EdgeInsets.fromLTRB(20, 50, 0, 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Align(
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
                  Text(
                    'These recommendations are based on your recent trip history.',
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Set background color
        selectedItemColor: Color(0xFFE15A37), // Set selected item color
        unselectedItemColor: Color.fromARGB(255, 137, 136, 136), // Set unselected item color
        selectedFontSize: 10, // Set selected item text size
        unselectedFontSize: 10, // Set unselected item text size
        items: [
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
              MaterialPageRoute(builder: (context) => PlansScreen())
            );
          }
        },
      ),
    );
  }
}
