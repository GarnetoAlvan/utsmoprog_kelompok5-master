import 'package:UTS_Kelompok5/common/extension.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final Map pObj;
  const OnBoardingPage({super.key, required this.pObj});


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
        width: media.width,
        height: media.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Image.asset(
              pObj["image"].toString(),
              width : media.width,
              fit: BoxFit.fitWidth,
            ),

            SizedBox(height: media.width * 0.02),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                pObj["title"].toString(),
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
              pObj["subtitle"].toString(),
                style: TextStyle(
                    color: TColor.gray,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        )
    );
  }
}
