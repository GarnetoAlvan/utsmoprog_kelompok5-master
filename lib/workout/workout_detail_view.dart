import 'colo_extension.dart';
import 'exercises_details.dart';
import 'package:flutter/material.dart';
import 'package:UTS_Kelompok5/calories.dart';
import 'exercises_row_section.dart';

class WorkoutDetailView extends StatefulWidget {
  final Map dObj;
  const WorkoutDetailView({super.key, required this.dObj});

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
  List youArr = [
    {"image": "assets/img/dumbbell.png", "title": "Barbell"},
    {"image": "assets/img/jump_rope.png", "title": "Skipping Rope"},
    {"image": "assets/img/bottle.png", "title": "Bottle 1 Liters"},
  ];

  // List exercisesArr = [
  //   {
  //     "name": "Set 1",
  //     "set": [
  //       {"image": "assets/img/todo1.png", "title": "Warm Up", "value": "05:00"},
  //       {
  //         "image": "assets/img/todo2.png",
  //         "title": "Jumping Jack",
  //         "value": "12x"
  //       },
  //       {"image": "assets/img/todo3.png", "title": "Skipping", "value": "15x"},
  //       {"image": "assets/img/todo4.png", "title": "Squats", "value": "20x"},
  //       {
  //         "image": "assets/img/todo5.png",
  //         "title": "Arm Raises",
  //         "value": "00:53"
  //       },
  //       {
  //         "image": "assets/img/todo6.png",
  //         "title": "Rest and Drink",
  //         "value": "02:00"
  //       },
  //       //--
  //       {
  //         "image": "assets/img/forearm-plank 1.png",
  //         "title": "Forearm Plank",
  //         "value": "02:00"
  //       },
  //       {
  //         "image": "assets/img/jogging 1.png",
  //         "title": "Jogging",
  //         "value": "01:00"
  //       },
  //       {"image": "assets/img/plank 1.png", "title": "Plank", "value": "03:00"},
  //       {
  //         "image": "assets/img/push-up 1.png",
  //         "title": "Push Up",
  //         "value": "15x"
  //       },
  //       {
  //         "image": "assets/img/side-plank 1.png",
  //         "title": "Side Plank",
  //         "value": "02:00"
  //       },
  //       {"image": "assets/img/sit-up 1.png", "title": "Sit Up", "value": "15x"},
  //       {
  //         "image": "assets/img/wall-sit 1.png",
  //         "title": "Wall Sit",
  //         "value": "03:00"
  //       },

  //       {
  //         "image": "assets/img/tricep-dip 1.png",
  //         "title": "Tricep Dip",
  //         "value": "20x"
  //       },
  //       // {
  //       //   "image": "assets/img/bridge 1.png",
  //       //   "title": "Bridge",
  //       //   "value": "05:00"
  //       // },
  //     ],
  //   },
  // ];

  List exercisesArr_fullbody = [
    {
      "name": "Set 1",
      "set": [
        {"image": "assets/img/todo1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/todo2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/todo3.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/todo4.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/todo5.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/todo6.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
        //--
        {
          "image": "assets/img/forearm-plank 1.png",
          "title": "Forearm Plank",
          "value": "02:00"
        },
        {
          "image": "assets/img/jogging 1.png",
          "title": "Jogging",
          "value": "01:00"
        },
        {"image": "assets/img/plank 1.png", "title": "Plank", "value": "03:00"},
        {
          "image": "assets/img/push-up 1.png",
          "title": "Push Up",
          "value": "15x"
        },
        {
          "image": "assets/img/side-plank 1.png",
          "title": "Side Plank",
          "value": "02:00"
        },
      ],
    },
  ];

  List exercisesArr_lowerbody = [
    {
      "name": "Set 1",
      "set": [
        {"image": "assets/img/todo1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/todo2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/todo3.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/todo4.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/todo5.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/todo6.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
        //--
        {
          "image": "assets/img/forearm-plank 1.png",
          "title": "Forearm Plank",
          "value": "02:00"
        },
        {
          "image": "assets/img/jogging 1.png",
          "title": "Jogging",
          "value": "01:00"
        },
        {"image": "assets/img/plank 1.png", "title": "Plank", "value": "03:00"},
        {
          "image": "assets/img/push-up 1.png",
          "title": "Push Up",
          "value": "15x"
        },
        {
          "image": "assets/img/side-plank 1.png",
          "title": "Side Plank",
          "value": "02:00"
        },
        {"image": "assets/img/sit-up 1.png", "title": "Sit Up", "value": "15x"},
      ],
    },
  ];

  List exercisesArr_abs = [
    {
      "name": "Set 1",
      "set": [
        {"image": "assets/img/todo1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/todo2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/todo3.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/todo4.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/todo5.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/todo6.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
        //--
        {
          "image": "assets/img/forearm-plank 1.png",
          "title": "Forearm Plank",
          "value": "02:00"
        },
        {
          "image": "assets/img/jogging 1.png",
          "title": "Jogging",
          "value": "01:00"
        },
        {"image": "assets/img/plank 1.png", "title": "Plank", "value": "03:00"},
        {
          "image": "assets/img/push-up 1.png",
          "title": "Push Up",
          "value": "15x"
        },
        {
          "image": "assets/img/side-plank 1.png",
          "title": "Side Plank",
          "value": "02:00"
        },
        {"image": "assets/img/sit-up 1.png", "title": "Sit Up", "value": "15x"},
        {
          "image": "assets/img/wall-sit 1.png",
          "title": "Wall Sit",
          "value": "03:00"
        },

        {
          "image": "assets/img/tricep-dip 1.png",
          "title": "Tricep Dip",
          "value": "20x"
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      color: TColor.black,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Calories()));
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: TColor.lightGray,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "assets/img/black_btn.png",
                    width: 15,
                    height: 15,
                    fit: BoxFit.contain,
                  ),
                ),
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
            SliverAppBar(
              backgroundColor: TColor.black,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/img/workout4.png",
                  width: media.width * 0.75,
                  height: media.width * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: TColor.white.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                            color: TColor.gray.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dObj["title"].toString(),
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()} | 320 Calories Burn",
                                  style: TextStyle(
                                      color: TColor.gray, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You'll Need",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} Items",
                              style:
                              TextStyle(color: TColor.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: media.width * 0.28,
                                        width: media.width * 0.28,
                                        decoration: BoxDecoration(
                                            color: TColor.secondaryColor9bright,
                                            borderRadius:
                                            BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          yObj["image"].toString(),
                                          width: media.width * 0.2,
                                          height: media.width * 0.2,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          yObj["title"].toString(),
                                          style: TextStyle(
                                              color: TColor.black,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ));
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} Sets",
                              style:
                              TextStyle(color: TColor.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      _listviewBuilder(),
                      // ListView.builder(
                      //     padding: EdgeInsets.zero,
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     shrinkWrap: true,
                      //     itemCount: exercisesArr_fullbody.length,
                      //     itemBuilder: (context, index) {
                      //       if (widget.dObj["title"] == 'Fullbody Workout') {
                      //         var sObj =
                      //             exercisesArr_fullbody[index] as Map? ?? {};
                      //         return ExercisesSetSection(
                      //           sObj: sObj,
                      //           onPressed: (obj) {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                 builder: (context) =>
                      //                     ExercisesStepDetails(
                      //                   eObj: obj,
                      //                 ),
                      //               ),
                      //             );
                      //           },
                      //         );
                      //       } else if (widget.dObj["title"] ==
                      //           'Lowerbody Workout') {
                      //         var sObj =
                      //             exercisesArr_lowerbody[(index - 2)] as Map? ??
                      //                 {};
                      //         return ExercisesSetSection(
                      //             sObj: sObj,
                      //             onPressed: (obj) {
                      //               Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       ExercisesStepDetails(
                      //                     eObj: obj,
                      //                   ),
                      //                 ),
                      //               );
                      //             });
                      //       } else {
                      //         var sObj = exercisesArr_abs[index] as Map? ?? {};
                      //         return ExercisesSetSection(
                      //             sObj: sObj,
                      //             onPressed: (obj) {
                      //               Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       ExercisesStepDetails(
                      //                     eObj: obj,
                      //                   ),
                      //                 ),
                      //               );
                      //             });
                      //       }
                      //     }),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                    ],
                  ),
                ),
                // gausah
                // SafeArea(
                //   child: Column(
                //     mainAxisSize: MainAxisSize.max,
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       RoundButton(title: "Start Workout", onPressed: () {})
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _listviewBuilder() {
    if (widget.dObj["title"] == 'Fullbody Workout') {
      return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: exercisesArr_fullbody.length,
          itemBuilder: (context, index) {
            var sObj = exercisesArr_fullbody[index] as Map? ?? {};
            return ExercisesSetSection(
              sObj: sObj,
              onPressed: (obj) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExercisesStepDetails(
                      eObj: obj,
                    ),
                  ),
                );
              },
            );
          });
    } else if (widget.dObj["title"] == 'Lowerbody Workout') {
      return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: exercisesArr_lowerbody.length,
          itemBuilder: (context, index) {
            var sObj = exercisesArr_lowerbody[index] as Map? ?? {};
            return ExercisesSetSection(
              sObj: sObj,
              onPressed: (obj) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExercisesStepDetails(
                      eObj: obj,
                    ),
                  ),
                );
              },
            );
          });
    } else {
      return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: exercisesArr_abs.length,
          itemBuilder: (context, index) {
            var sObj = exercisesArr_abs[index] as Map? ?? {};
            return ExercisesSetSection(
              sObj: sObj,
              onPressed: (obj) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExercisesStepDetails(
                      eObj: obj,
                    ),
                  ),
                );
              },
            );
          });
    }
  }
}