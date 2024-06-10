import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart'; 


class FormContainerWidget extends StatefulWidget {

  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormContainerWidget({
    this.controller,
    this.isPasswordField,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType
  });

}


class SignupScreen extends StatefulWidget {
 SignupScreen({super.key});


  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFE9E9E9),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create an Account',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                height: 0.7,
                letterSpacing: 0.3,
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  controller: _emailController,
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.3,
                    letterSpacing: 0.3,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17.5, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFC1C1C1)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(0xFFC1C1C1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  controller: _passwordController,
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.3,
                    letterSpacing: 0.3,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17.5, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFC1C1C1)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color(0xFFC1C1C1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF19516E),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      
                      String email = ""; 
                      String password = ""; 

                    
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString('email', email);
                      prefs.setString('password', password);

                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Center(
                        child: Text(
                          'Sign up',
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
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(bottom: 22.5),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 1.5,
                        color: const Color(0xFFC1C1C1),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.4,
                              letterSpacing: 0.3,
                              color: Color(0xFFC1C1C1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                  padding: const EdgeInsets.fromLTRB(90, 14, 90, 14),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF19516E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                        width: 17.6,
                        height: 18,
                        child: SvgPicture.asset(
                          'assets/icons/google.svg',
                        ),
                      ),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 1.3,
                          letterSpacing: 0.3,
                          color: Color(0xFF19516E),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 1, 181),
                  padding: const EdgeInsets.fromLTRB(80, 14, 80, 14),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF19516E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                        child: SizedBox(
                          width: 18,
                          height: 18,
                          child: SvgPicture.asset(
                            'assets/icons/fb.svg',
                          ),
                        ),
                      ),
                      const Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          height: 1.3,
                          letterSpacing: 0.3,
                          color: Color(0xFF19516E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


void _signUp() async {

setState(() {
  isSigningUp = true;
});

    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

setState(() {
  isSigningUp = false;
});
    if (user != null) {
      void print("Error");
      Navigator.pushNamed(context, "/home");
    } else {
      void print("Error");
    }
  }
