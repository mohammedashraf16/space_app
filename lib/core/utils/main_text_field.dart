

import 'package:flutter/material.dart';

class BuildTextField extends StatefulWidget {
  const BuildTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.nextFocus,
    this.label,
    this.hint,
    this.isObscured = false,
    this.iconData,
    this.textInputType = TextInputType.text,
    this.backgroundColor,
    this.hintTextStyle,
    this.labelTextStyle,
    this.cursorColor,
    this.readOnly = false,
    this.validation,
    this.onTap,
    this.maxLines,
    this.prefixIcon, this.borderBackgroundColor, this.suffixIcon,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final bool isObscured;
  final String? label;
  final String? hint;
  final TextInputType textInputType;
  final IconData? iconData;
  final Color? backgroundColor;
  final Color? borderBackgroundColor;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final Color? cursorColor;
  final bool readOnly;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validation;
  final void Function()? onTap;

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  late bool hidden = widget.isObscured;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null
            ? Padding(
          padding: const EdgeInsets.only(
              top: 10),
          child: Text(
            widget.label!,
          ),
        )
            : const SizedBox(),
        Container(
          height: 60,
          margin: const EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: widget.borderBackgroundColor ?? Colors.transparent )
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: TextFormField(
            maxLines: widget.maxLines ?? 1,
            controller: widget.controller,
            focusNode: widget.focusNode,
            readOnly: widget.readOnly,
            obscureText: hidden,
            keyboardType: widget.textInputType,
            obscuringCharacter: '*',
            cursorColor: widget.cursorColor,
            onTap: widget.onTap,
            onEditingComplete: () {
              widget.focusNode?.unfocus();
              if (widget.nextFocus != null) {
                FocusScope.of(context).requestFocus(widget.nextFocus);
              }
            },
            textInputAction: widget.nextFocus == null
                ? TextInputAction.done
                : TextInputAction.next,
            validator: (value) {
              if (widget.validation == null) {
                setState(() {
                  errorText = null;
                });
              } else {
                setState(() {
                  errorText = widget.validation!(value);
                });
              }
              return errorText;
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12),
              hintText: widget.hint,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.isObscured
                  ? IconButton(
                icon: const Icon(Icons.remove_red_eye),  // Icon for obscured text
                onPressed: () {
                  setState(
                        () {
                      hidden = !hidden;
                    },
                  );
                },
                iconSize: 24,
                splashRadius: 1,
                isSelected: !hidden,
                color: widget.cursorColor,
                selectedIcon:  Icon(Icons.remove_red_eye_rounded),
             )
                  : widget.suffixIcon,
              hintStyle: widget.hintTextStyle,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorStyle: TextStyle(
              ),
            ),
          ),
        ),
        errorText == null
            ? const SizedBox()
            : Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left:8,
          ),
          child: Text(
            errorText!,
          ),
        ),
      ],
    );
  }
}
