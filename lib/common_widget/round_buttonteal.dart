
import 'package:flutter/material.dart';
import 'package:UTS_Kelompok5/common/colo_extension.dart';

enum RoundButtonType { bgGradient, textGradient }


class RoundButtonTeal extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  const RoundButtonTeal({super.key, required this.title, this.type = RoundButtonType.textGradient, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: TColor.secondaryColor3teal,
        minWidth: double.maxFinite,

        child: Text(title,
            style : TextStyle(
                color: TColor.white,
                fontSize: 16,
                fontWeight: FontWeight.w600
            )
        ),
      ),
    );

  }
}
