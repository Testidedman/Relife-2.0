import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.obscureText
  });

  final TextEditingController controller;
  final String hintText;
  final Widget icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: GoogleFonts.spaceGrotesk(
        textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xff121F3E)
        ),
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            vertical: 17,
            horizontal: 18
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffEAEFF3),
            )
        ),
        prefixIcon: icon,
        hintText: hintText,
        hintStyle: GoogleFonts.spaceGrotesk(
          textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff96A0B5)
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xff3554D1),
              width: 1
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xffEAEFF3),
              width: 1
          ),
        ),
      ),
    );
  }
}
