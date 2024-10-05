import 'package:flutter/material.dart';
import 'package:space_app/core/utils/customized_textfield.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'RegisterScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Stack(
          children: [

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF031018),
                    Color(0xFF05324D),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Image.asset('assets/images/moon.png'),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:250),
                  const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                       fontFamily: "PressStart2P",
                    ),
                  ),
                  const SizedBox(height: 50),
                  CustomizedTextFormField(text: 'Name'),
                  const SizedBox(height: 27),
                  CustomizedTextFormField(text: 'Email'),
                  const SizedBox(height: 25),
                  CustomizedTextFormField(text: 'Password', isPassword: true),
                  const SizedBox(height: 25),
                  CustomizedTextFormField(text: 'Re-Password', isPassword: true),
                  const SizedBox(height: 25),
                  CustomizedTextFormField(text: 'Phone'),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0x20D9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const SizedBox(
                      width: 150,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          fontFamily: "PressStart2P",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
