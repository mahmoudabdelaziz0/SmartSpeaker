import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.text,
    required this.press,
  });
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

          primary: Colors.white,
          backgroundColor: const Color.fromRGBO(10, 141, 246, 1.0),
        ),
        onPressed: press as void Function(),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: (22),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
