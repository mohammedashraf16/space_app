import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomizedTextFormField extends StatefulWidget {
  String text;
  bool isPassword;

  CustomizedTextFormField({super.key, required this.text, this.isPassword = false});

  @override
  _CustomizedTextFormFieldState createState() =>
      _CustomizedTextFormFieldState();
}

class _CustomizedTextFormFieldState extends State<CustomizedTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 358,
      child: TextFormField(
        obscureText: widget.isPassword ? obscureText : false,
        decoration: InputDecoration(
          hintText: widget.text,
          hintStyle: const TextStyle(color: Color(0x50FFFFFF)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Color(0x20D9D9D9),
            ),
          ),
          filled: true,
          fillColor: const Color(0x40D9D9D9),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: const Color(0x50FFFFFF),
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                )
              : null,
        ),
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.w400,
          fontSize: 11,
          fontFamily: "PressStart2P",
        ),
      ),
    );
  }
}
