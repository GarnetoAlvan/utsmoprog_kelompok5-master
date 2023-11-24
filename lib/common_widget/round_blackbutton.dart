import 'package:UTS_Kelompok5/common/extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonTypes { bgGradient, textGradient }


class RoundButtonBlack extends StatelessWidget {
  final String title;
  final RoundButtonTypes type;
  final VoidCallback onPressed;
  const RoundButtonBlack({super.key, required this.title, this.type = RoundButtonTypes.textGradient, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Colors.grey[600],
        minWidth: double.maxFinite,

        child: Text(title,
            style : TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700
            )
        ),
      ),
    );

  }
}
