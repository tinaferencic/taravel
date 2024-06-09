import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF19516E),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 300.0),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,20),
        child: SvgPicture.asset(
          'assets/icons/logo.svg',
          width: 283, 
          height: 56, 
        ),
      ),
            const Text(
              'Make that trip leave the group chat',
              style: TextStyle(
                fontFamily: 'Outfit', // Font family
                fontSize: 16, // Font size
                color: Colors.white, // Text color
              ),
            ),
    ]  
      )
    )
    ),
    floatingActionButton: Column(
      
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 170, 10), 
              child: Text(
                'Log in',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupScreen()),
              );
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(18, 0, 18, 19),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 350,
                  height: 46,
                  padding: const EdgeInsets.fromLTRB(130, 13, 0, 13),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: const SizedBox(
                      width: 28,
                      height: 28,
                      child: Text(
                        'Join for free',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 1.3,
                          letterSpacing: 0.3,
                          color:  Color(0xFF19516E),
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
