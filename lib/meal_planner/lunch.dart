import 'package:UTS_Kelompok5/meal_planner/meal_recommed_cell.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import 'package:UTS_Kelompok5/meal_planner/meal_category_cell.dart';
import 'package:UTS_Kelompok5/meal_planner/popular_meal_row.dart';
import 'food_info_details_view.dart';

class MealFoodDetailsViewLunch extends StatefulWidget {
  final Map eObj;
  const MealFoodDetailsViewLunch({super.key, required this.eObj});

  @override
  State<MealFoodDetailsViewLunch> createState() => _MealFoodDetailsViewState();
}

class _MealFoodDetailsViewState extends State<MealFoodDetailsViewLunch> {
  TextEditingController txtSearch = TextEditingController();

  List categoryArr = [
    {
      "name": "Drinks",
      "image": "assets/img/haus!.png",
    },
    {
      "name": "Sweets",
      "image": "assets/img/candy.png",
    },
    {
      "name": "Quinoa",
      "image": "assets/img/quinoa.png",
    },
    {
      "name": "Health",
      "image": "assets/img/burger.png",
    },
    {
      "name": "Salad",
      "image": "assets/img/fruity.png",
    },
    {
      "name": "Cake",
      "image": "assets/img/chocohealth.png",
    },
  ];

  List popularArr = [
    {
      "name": "Salad",
      "image": "assets/img/salad.png",
      "b_image":"assets/img/salad.png",
      "size": "Easy",
      "description" : "A salad is a dish consisting of mixed ingredients, frequently vegetables. They are typically served chilled or at room temperature, though some can be served warm. ",
      "time": "15mins",
      "kcal": "154kCal"
    },
    {
      "name": "Spaghetti",
      "image": "assets/img/spaghetti.png",
      "b_image": "assets/img/spaghetti.png",
      "description" :"Spaghetti is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Italian spaghetti is typically made from durum-wheat semolina. ",
      "size": "Medium",
      "time": "40mins",
      "kcal": "389kCal"
    },
    {
      "name": "Sushi",
      "image": "assets/img/sushis.png",
      "b_image": "assets/img/sushis.png",
      "description" : "Sushi is a Japanese dish of prepared vinegared rice, usually with some sugar and salt, a variety of ingredients, such as seafood — often raw — and vegetables. Styles of sushi and its presentation vary widely, but the one key ingredient is sushi rice, also referred to as shari, or sumeshi.",
      "size": "Hard",
      "time": "30mins",
      "kcal": "245kCal"
    },

  ];


  List recommendArr = [
    {
      "name": "Avocado Bowl",
      "image": "assets/img/avocado.png",
      "b_image":"assets/img/avocado.png",
      "size": "Easy",
      "description" : "This vegetarian avocado bowl is packed with vitamins, nutrients, fiber, and made extra special with California Avocados for those long days of training.",
      "time": "30mins",
      "kcal": "167kCal"
    },
    {
      "name": "Chicken Wrap",
      "image": "assets/img/wrapmini.png",
      "b_image":"assets/img/wrapmini.png",
      "size": "Hard",
      "description" : "In this pulled chicken-style wrap, warm toasted tortillas are filled with sweet and spicy shredded chicken and provolone cheese.",
      "time": "50mins",
      "kcal": "462kCal"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.secondaryColor10bright,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: TColor.white,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/img/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          widget.eObj["name"].toString(),
          style: TextStyle(
              color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: TColor.lightGray,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/img/more_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: TColor.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: TColor.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: txtSearch,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            prefixIcon: Image.asset(
                              "assets/img/search.png",
                              width: 25,
                              height: 25,
                            ),
                            hintText: "What Would You Like To Eat?"),
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 1,
                    height: 25,
                    color: TColor.gray.withOpacity(0.3),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/img/Filter.png",
                      width: 25,
                      height: 25,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose from selection",
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryArr.length,
                  itemBuilder: (context, index) {
                    var cObj = categoryArr[index] as Map? ?? {};
                    return MealCategoryCell(
                      cObj: cObj,
                      index: index,
                    );
                  }),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Recommendation\nfor Diet",
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: media.width * 0.6,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendArr.length,
                  itemBuilder: (context, index) {
                    var fObj = recommendArr[index] as Map? ?? {};
                    return MealRecommendCell(
                      fObj: fObj,
                      index: index,
                    );
                  }),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: popularArr.length,
                itemBuilder: (context, index) {
                  var fObj = popularArr[index] as Map? ?? {};
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodInfoDetailsView(
                            dObj: fObj,
                            mObj: widget.eObj,
                          ),
                        ),
                      );
                    },
                    child: PopularMealRow(
                      mObj: fObj,
                    ),
                  );
                }),
            SizedBox(
              height: media.width * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
