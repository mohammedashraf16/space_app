import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomizedTextformfield extends StatefulWidget {
  String text;
  bool isPassword;

  CustomizedTextformfield({required this.text, this.isPassword = false});

  @override
  _CustomizedTextformfieldState createState() =>
      _CustomizedTextformfieldState();
}

class _CustomizedTextformfieldState extends State<CustomizedTextformfield> {
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
          hintStyle: TextStyle(color: Color(0x50FFFFFF)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Color(0x20D9D9D9),
            ),
          ),
          filled: true,
          fillColor: Color(0x40D9D9D9),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Color(0x50FFFFFF),
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                )
              : null,
        ),
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.w400,
          fontSize: 11,
          fontFamily: "PressStart2P",
        ),
      ),
    );
  }
}
