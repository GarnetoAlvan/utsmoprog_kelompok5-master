import 'package:UTS_Kelompok5/common_widget/on_boarding_page.dart';
import 'package:UTS_Kelompok5/view/login/signup_view.dart';
import 'package:flutter/material.dart';

import '../../common/extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState(){
    super.initState();
    
    controller.addListener(() {
      selectPage = controller.page?.round()??0;

      setState(() {

      });
    });
  }
  List pageArr = [
    {
      "title":"Results, Not Promise",
      "subtitle":"We can help you determine your goals",
      "image":"assets/img/on_1.png"
    },
    {
      "title":"Get Burn",
      "subtitle":"Let's keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in",
      "image":"assets/img/on_1.png"
    },
    {
      "title":"Eat Well",
      "subtitle":"Let's start a healty lifestyle, we can determine your food every day, healthy eating is fun",
      "image":"assets/img/on_1.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.black,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return OnBoardingPage(pObj: pObj);

              }),
         SizedBox(
           width: 75,
           height: 70,
           child:  Stack(
             alignment: Alignment.center,
             // alignment : Alignment.topCenter,
             children: [
               SizedBox(
                 width: 70,
                 height: 70,
                 child: CircularProgressIndicator(
                   color: TColor.primaryColor1,
                   value: selectPage / 2,
                   strokeWidth: 2,
                 ),
               ),


               Container(
                 margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                 width:50,
                 height: 50,
                 decoration: BoxDecoration(
                     color: TColor.primaryColor1,
                     borderRadius: BorderRadius.circular(35)
                 ),
                 child: IconButton(
                   icon: Icon(Icons.navigate_next, color: TColor.gray ),
                   onPressed: (){
                     if (selectPage <  2) {
                       selectPage = selectPage + 1;

                       controller.animateToPage(selectPage, duration: const Duration(milliseconds: 200), curve: Curves.bounceInOut);
                       // controller.jumpToPage(selectPage);

                       setState(() {

                       });
                     } else {
                       print("Open Welcome Screen");
                       Navigator.push(context, MaterialPageRoute(builder:(context) => const SignUpView()));

                     }
                   },

                 ),
               ),
             ],
           ),
         )
        ],
      ),
    );

  }
}
