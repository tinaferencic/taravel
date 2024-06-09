import 'package:flutter/material.dart';
import 'date.dart';
import 'budget.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  bool _museumClicked = false;
  bool _restaurantClicked = false;
  bool _sportingEventClicked = false;
  bool _festivalClicked = false;
  bool _cafeClicked = false;
  bool _historicMonumentClicked = false;

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
                            MaterialPageRoute(builder: (context) => const DateScreen()),
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
                        'Your interests',
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
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Choose your top picks and priorities of your newest adventure. This helps us adjust your plan, making it the best possible experience for you.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.4,
                  letterSpacing: 0.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildClickableImage(
                  imageAsset: 'assets/images/muzej.jpeg',
                  text: 'Museums',
                  clicked: _museumClicked,
                  onPressed: () {
                    setState(() {
                      _museumClicked = !_museumClicked;
                    });
                  },
                ),
                _buildClickableImage(
                  imageAsset: 'assets/images/restoran.jpeg',
                  text: 'Restaurants',
                  clicked: _restaurantClicked,
                  onPressed: () {
                    setState(() {
                      _restaurantClicked = !_restaurantClicked;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildClickableImage(
                  imageAsset: 'assets/images/sport.jpeg',
                  text: 'Sporting events',
                  clicked: _sportingEventClicked,
                  onPressed: () {
                    setState(() {
                      _sportingEventClicked = !_sportingEventClicked;
                    });
                  },
                ),
                _buildClickableImage(
                  imageAsset: 'assets/images/festival.jpeg',
                  text: 'Festivals',
                  clicked: _festivalClicked,
                  onPressed: () {
                    setState(() {
                      _festivalClicked = !_festivalClicked;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildClickableImage(
                  imageAsset: 'assets/images/kava.jpeg',
                  text: 'Cafes',
                  clicked: _cafeClicked,
                  onPressed: () {
                    setState(() {
                      _cafeClicked = !_cafeClicked;
                    });
                  },
                ),
                _buildClickableImage(
                  imageAsset: 'assets/images/povijest.jpeg',
                  text: 'Historic monuments',
                  clicked: _historicMonumentClicked,
                  onPressed: () {
                    setState(() {
                      _historicMonumentClicked = !_historicMonumentClicked;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BudgetScreen()),
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

  Widget _buildClickableImage({
    required String imageAsset,
    required String text,
    required bool clicked,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                imageAsset,
                width: 160,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.3,
                  letterSpacing: -0.2,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          if (clicked)
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 40,
            ),
        ],
      ),
    );
    
    
  }
}
