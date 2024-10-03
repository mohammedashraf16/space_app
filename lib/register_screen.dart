import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice1/customized_textfield.dart';

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
              decoration: BoxDecoration(
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
                  SizedBox(height:250),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                       fontFamily: "PressStart2P",
                    ),
                  ),
                  SizedBox(height: 50),
                  CustomizedTextformfield(text: 'Name'),
                  SizedBox(height: 27),
                  CustomizedTextformfield(text: 'Email'),
                  SizedBox(height: 25),
                  CustomizedTextformfield(text: 'Password', isPassword: true),
                  SizedBox(height: 25),
                  CustomizedTextformfield(text: 'Re-Password', isPassword: true),
                  SizedBox(height: 25),
                  CustomizedTextformfield(text: 'Phone'),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x20D9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: SizedBox(
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
