import 'colo_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType { bgGradient, textGradient }


class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  const RoundButton({super.key, required this.title, this.type = RoundButtonType.textGradient, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.white,
        minWidth: double.maxFinite,

        child: Text(title,
            style : TextStyle(
                color: TColor.primaryColor1,
                fontSize: 16,
                fontWeight: FontWeight.w900
            )
        ),
      ),
    );

  }
}