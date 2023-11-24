import 'package:UTS_Kelompok5/common/colo_extension.dart';
import 'package:UTS_Kelompok5/common_widget/tab_button.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {

int selectTab = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(width: 70, height: 70, child : InkWell( onTap : (){}, child: Container(
          width: 65,
          height : 65,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,)
              ]
          ),
              child: Icon(Icons.camera_alt_rounded, color : TColor.white, size: 35,),
      ),

      ), ),
      bottomNavigationBar: BottomAppBar(
          child: Container (
            decoration: BoxDecoration(color : TColor.white, boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 2,
                offset : Offset(0,-2))
            ]),

            height: kToolbarHeight,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // SizedBox(width:0,),
                TabButton(icon: "assets/img/home_tab.png", selectIcon: "assets/img/home_tab_select.png", isActive: selectTab==0, onTap: (){
                  selectTab = 0;
                  if(mounted){
                    setState((){});}
                } ),

                TabButton(icon: "assets/img/profile_tab.png", selectIcon: "assets/img/person_tab_select.png",
                    isActive: selectTab==1,
                    onTap: (){
                  selectTab = 1;
                  if(mounted){
                    setState((){});
                  }
                } ),

              ],
            ),
          ),
        ),


    );
  }
}
