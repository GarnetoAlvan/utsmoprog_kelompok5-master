import 'package:UTS_Kelompok5/meal_planner/meal_recommed_cell.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import 'package:UTS_Kelompok5/meal_planner/meal_category_cell.dart';
import 'package:UTS_Kelompok5/meal_planner/popular_meal_row.dart';
import 'food_info_details_view.dart';

class MealFoodDetailsViewSnacks extends StatefulWidget {
  final Map eObj;
  const MealFoodDetailsViewSnacks({super.key, required this.eObj});

  @override
  State<MealFoodDetailsViewSnacks> createState() => _MealFoodDetailsViewState();
}

class _MealFoodDetailsViewState extends State<MealFoodDetailsViewSnacks> {
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
      "name": "Wafer",
      "image": "assets/img/Wafer.png",
      "b_image":"assets/img/Wafer.png",
      "description" :" crisp, often sweet, very thin, flat, light biscuit, often used to decorate ice cream, and also used as a garnish on some sweet dishes.",
      "size": "Hard",
      "time": "120mins",
      "kcal": "345kCal",
  /*List nutritionArr = [
    {"imageingredient1": "assets/img/burn.png", "title1": "180kCal"},
    {"imageingredient2": "assets/img/egg.png", "title2": "30g fats"},
    {"imageingredient3": "assets/img/proteins.png", "title3": "20g proteins"},
    {"imageingredient4": "assets/img/carbo.png", "title4": "50g carbo"},
  ];*/
    },
    {
      "name": "Cookie",
      "image": "assets/img/cookie.png",
      "b_image": "assets/img/cookie.png",
      "description" :"Any of various small sweet cakes, either flat or slightly raised, cut from rolled dough, dropped from a spoon, cut into pieces after baking, or curled with a special iron.",
      "size": "Medium",
      "time": "70mins",
      "kcal": "790kCal",
    },
    {
      "name": "Stix",
      "image": "assets/img/Sticks.png",
      "b_image": "assets/img/Sticks.png",
      "description": "a Japanese sweet snack food produced by the Ezaki Glico food company. Pocky was first sold in 1966, and was invented by Yoshiaki Koma. It consists of coated biscuit sticks.",
      "size": "Hard",
      "time": "60mins",
      "kcal": "456kCal",
    },

  ];


  List recommendArr = [
    {
      "name": "Granola",
      "image": "assets/img/granolabar.png",
      "b_image":"assets/img/granolabar.png",
      "description": "a bar made of a mixture of oats and other ingredients (such as brown sugar, raisins, coconut, or nuts) that is eaten as a snack ",
      "size": "Medium",
      "time": "50mins",
      "kcal": "231kCal",
    },
    {
      "name": "Taiyaki Ice Cream",
      "image": "assets/img/icecream.png",
      "b_image":"assets/img/icecream.png",
      "description": "Made on-site in a sizable spinning fish-shaped mold with a slightly different shape. The fish's mouth is wide open, waiting to accept a generous scoop of ice cream. ",
      "size": "Easy",
      "time": "200mins",
      "kcal": "467kCal",
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
