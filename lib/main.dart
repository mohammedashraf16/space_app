import 'package:flutter/material.dart';
import 'package:space_app/features/auth/screens/login_screen.dart';
import 'package:space_app/features/auth/screens/register_screen.dart';


void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) =>  RegisterScreen(),
        HomeScreen.routeName: (context)=>HomeScreen(),
      },
    );
}
}
