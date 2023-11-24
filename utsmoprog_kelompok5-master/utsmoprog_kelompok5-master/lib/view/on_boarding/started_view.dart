import 'package:UTS_Kelompok5/common/extension.dart';
import 'package:UTS_Kelompok5/common_widget/round_button.dart';
import 'package:UTS_Kelompok5/view/on_boarding/fillerstart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {

   bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.gray,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     colors:TColor.primaryG1,
          //     begin : Alignment.topLeft,
          //     end: Alignment.bottomRight)
          color:TColor.black,

        ),

        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset('assets/img/lesbefitlogo.png'),
                Text(
                  "LesBeFit",
                  style : TextStyle(
                      color: TColor.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),

                Text(
                  "Results, Not Promises",
                  style : TextStyle(
                      color: TColor.gray,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),

                const Spacer(flex: 1),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35,bottom:100, right: 35,),
                    child: RoundButton(
                      title : "Get Started",
                      type : isChangeColor ? RoundButtonType.bgGradient : RoundButtonType.textGradient,
                      onPressed: () {
                        if(isChangeColor) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoadingView()));
                        }
                        else {
                          setState(() {
                            isChangeColor = true;
                          });
                        }
                      },
                    ),
                  ),
                )
              ],

            )),
    );
  }
}
