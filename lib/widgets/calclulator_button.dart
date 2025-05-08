import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final void Function(String) callback;

  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        child: SizedBox(
          width: 300,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(fillColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Text(text,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: textSize,
                    color: Color(textColor),

                  )
              ) ,
            ),
            onPressed: () => {callback(text)},

          ),
        )
    );
  }
}
