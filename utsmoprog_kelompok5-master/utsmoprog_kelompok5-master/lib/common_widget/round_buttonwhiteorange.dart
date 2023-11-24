import 'package:UTS_Kelompok5/common/extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonTypez { bgGradient, textGradient }


class RoundButtonSmallOrange extends StatelessWidget {
  final String title;
  final RoundButtonTypez type;
  final VoidCallback onPressed;
  const RoundButtonSmallOrange({super.key, required this.title, this.type = RoundButtonTypez.textGradient, required this.onPressed});

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
                fontWeight: FontWeight.w600
            )
        ),
      ),
    );

  }
}
