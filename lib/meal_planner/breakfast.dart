import 'package:UTS_Kelompok5/meal_planner/meal_recommed_cell.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import 'package:UTS_Kelompok5/meal_planner/meal_category_cell.dart';
import 'package:UTS_Kelompok5/meal_planner/popular_meal_row.dart';
import 'food_info_details_view.dart';

class MealFoodDetailsViewBreakfast extends StatefulWidget {
  final Map eObj;
  const MealFoodDetailsViewBreakfast({super.key, required this.eObj});

  @override
  State<MealFoodDetailsViewBreakfast> createState() => _MealFoodDetailsViewState();
}

class _MealFoodDetailsViewState extends State<MealFoodDetailsViewBreakfast> {
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
      "name": "French Toast",
      "image": "assets/img/toast.png",
      "b_image":"assets/img/toast.png",
      "size": "Easy",
      "description" : "French toast is a dish of sliced bread soaked in beaten eggs and often milk or cream, then pan-fried. Alternative names and variants include eggy bread, Bombay toast, freedom toast, gypsy toast, and poor knights.",
      "time": "40mins",
      "kcal": "70kCal",
    "step1": "Whisk egg, vanilla and cinnamon in shallow dish. Stir in milk.",
    "step2": "Dip bread slices in egg mixture, turning to coat evenly on both sides.",
    "step3": "Cook bread slices until browned",
    "step4": "Add vanilla extract and ground cinnamon then mix it well",
    "step5": "French toast ready to serve",
    },
    {
      "name": "Eggs Benedict",
      "image": "assets/img/eggs.png",
      "b_image": "assets/img/eggs.png",
      "size": "Medium",
      "description" : "Eggs Benedict is a common American breakfast or brunch dish, consisting of two halves of an English muffin, each topped with Canadian bacon, a poached egg, and hollandaise sauce.",
      "time": "20mins",
      "kcal": "120kCal",
    "step1": "Heat oil in a pan",
    "step2": "Crack egg into pan",
    "step3": "Cook 3 minutes until white is set",
    "step4": "Flip and cook 2-3 minutes until yolk is set",
    "step5": "Add pepper on top of the egg and ready to serve!",
    },
    {
      "name": "Sandwich",
      "image": "assets/img/sandwich.png",
      "b_image": "assets/img/sandwich.png",
      "description" : "A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type. ",
      "size": "Hard",
      "time": "20mins",
      "kcal": "120kCal",
      "step1": "Heat butter in a pan",
      "step2": "Cook the egg sunny-side-up with salt and pepper.",
      "step3": "Place the cooked egg and cheese between two slices of bread.",
      "step4": "Grill the sandwich until the bread is golden and the cheese is melted.",
      "step5": "Sandwich is ready to serve!",
    },

  ];


  List recommendArr = [
    {
      "name": "Fruit Salad",
      "image": "assets/img/fruitsalad.png",
      "b_image":"assets/img/fruitsalad.png",
      "description" : "Fruit salad is a dish consisting of various kinds of fruit, sometimes served in a liquid, either their juices or a syrup. In different forms, fruit salad can be served as an appetizer or a side as a salad. When served as an appetizer, a fruit salad is sometimes known as a fruit cocktail, or fruit cup.",
      "size": "Easy",
      "time": "30mins",
      "kcal": "210kCal",
      "step1": "Prepare a large bowl",
      "step2": "Combine strawberries, grapes, kiwis, and bananas",
      "step3": "Gently mix in peaches",
      "step4": "Chill for 1 hour before serving",
      "step5": "Fruit salad is ready to serve!",

    },
    {
      "name": "Chicken Sausages",
      "image": "assets/img/sausage.png",
      "b_image":"assets/img/sausage.png",
      "description" : "A sausage is a type of meat product usually made from ground meat along with salt, spices and other flavourings. Other ingredients, such as grains or breadcrumbs may be included as fillers or extenders.",
      "size": "Easy",
      "time": "15mins",
      "kcal": "365kCal",
      "step1": "Heat olive oil in a pan.",
      "step2": "Add minced garlic and sliced onions, sauté until onions are translucent.",
      "step3": "Add chicken sausage links, cook until browned.",
      "step4": "Add sliced bell peppers, Italian seasoning, salt, and pepper. Cook until peppers are tender.",
      "step5": "Serve hot.",
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
