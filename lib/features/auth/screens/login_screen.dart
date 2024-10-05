import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/core/utils/custom_btn.dart';
import 'package:space_app/core/utils/custom_circle_avatar.dart';
import 'package:space_app/core/utils/main_text_field.dart';
import 'package:space_app/features/auth/screens/register_screen.dart';


class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 44.0),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.asset("assets/images/mask.png"),
                    Positioned(
                      right: 70,
                      top: 100,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Space",
                        style: GoogleFonts.pressStart2p(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: BuildTextField(
                  backgroundColor: Colors.transparent,
                  borderBackgroundColor: Colors.grey,
                  hint: "Email",
                  hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: BuildTextField(
                  backgroundColor: Colors.transparent,
                  borderBackgroundColor: Colors.grey,
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  ),
                  hint: "Password",
                  hintTextStyle: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0, top: 14),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Forget Password ?",
                    style: GoogleFonts.pressStart2p(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
             const CustomBtn(text: "Login"),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: Divider()),
                    Text(
                      " or login with ",
                      style: GoogleFonts.pressStart2p(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCircleAvatar(color: Colors.blueAccent, image: 'assets/images/Shape.png',),
                  CustomCircleAvatar(color: Colors.white, image: 'assets/images/super.png',),
                  CustomCircleAvatar(color: Colors.black, image: 'assets/images/Path.png',),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: Text("Create a new account ?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pressStart2p(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}


