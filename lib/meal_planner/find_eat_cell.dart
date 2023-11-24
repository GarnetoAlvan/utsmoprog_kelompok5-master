import 'package:UTS_Kelompok5/meal_planner/round_buttonwhiteorange.dart';
import 'package:UTS_Kelompok5/meal_planner/dinner.dart';
import 'package:UTS_Kelompok5/meal_planner/lunch.dart';
import 'package:UTS_Kelompok5/meal_planner/breakfast.dart';
import 'package:UTS_Kelompok5/meal_planner/snacks.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class FindEatCell extends StatelessWidget {
  final Map fObj;
  final int index;
  const FindEatCell({super.key, required this.index, required this.fObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isEvent = index % 2 == 0;
    return Container(
      margin: const EdgeInsets.all(8),
      width: media.width * 0.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isEvent
                ? [
              TColor.secondaryColor11lightgrey,
              TColor.secondaryColor6dark
            ]
                : [
              TColor.secondaryColor11lightgrey,
              TColor.secondaryColor6dark
            ],
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(75),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealFoodDetailsViewDinner(eObj:fObj),
                ),
              );
            },
            child: Image.asset(
              fObj["image"].toString(),
              width: media.width * 0.3,
              height: media.width * 0.20,
            ),
          ),
          GestureDetector(
          onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealFoodDetailsViewSnacks(eObj:fObj)));},
            child: Text(
              fObj["name"],
              style: TextStyle(
                  color: TColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealFoodDetailsViewSnacks(eObj:fObj)));},
            child: Text(
              fObj["number"],
              style: TextStyle(color: TColor.white, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              width: 90,
              height: 25,
              child: RoundButtonSmallOrange(
                /*fontSize: 12,*/
                  type: isEvent
                      ? RoundButtonTypez.bgGradient
                      : RoundButtonTypez.bgGradient,
                  title: "Select",
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => MealFoodDetailsViewBreakfast(eObj:fObj)));}
              ),
            ),
          ),
        ],
      ),
    );
  }
}
