import 'package:flutter/material.dart';
import 'package:space_app/core/utils/main_text_field.dart';

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 250),
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
                    const BuildTextField(
                      backgroundColor: Colors.transparent,
                      borderBackgroundColor: Colors.grey,
                      hint: "Name",
                      hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const BuildTextField(
                      backgroundColor: Colors.transparent,
                      borderBackgroundColor: Colors.grey,
                      hint: "Email",
                      hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(height: 25),
                    const BuildTextField(
                      isObscured: true,
                      backgroundColor: Colors.transparent,
                      borderBackgroundColor: Colors.grey,
                      hint: "Password",
                      hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(height: 25),
                    const BuildTextField(
                      isObscured: true,
                      backgroundColor: Colors.transparent,
                      borderBackgroundColor: Colors.grey,
                      hint: "Re-Password",
                      hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(height: 25),
                    const BuildTextField(
                      backgroundColor: Colors.transparent,
                      borderBackgroundColor: Colors.grey,
                      hint: "Phone",
                      hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
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
                            fontSize: 16,
                            fontFamily: "PressStart2P",
                          ),
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
    );
  }
}
