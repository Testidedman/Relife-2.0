import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor
  });

  final String text;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 17),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: buttonColor,
        border: Border.all(
            color: const Color(0xffEAEFF3),
            width: 1
        ),
        borderRadius: const BorderRadius.all(
            Radius.circular(10)
        ),
      ),
      child: Text(
          text,
          style: GoogleFonts.spaceGrotesk(
            textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: textColor
            ),
          )
      ),
    );
  }
}