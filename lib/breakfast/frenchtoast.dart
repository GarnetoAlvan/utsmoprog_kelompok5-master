import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class foodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: const BackButtonIcon(),
              onPressed: () { },
            )
        ),
        backgroundColor: Colors.grey[850],
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              // AspectRatio(
              //   aspectRatio: 1.0,
              //   child: ImmutableWidget(),
              // ),
              SizedBox(height:5,),
              Container(
                height: 225,
                width: 410,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/toast.png'),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text('French Toast',
                  style: GoogleFonts.publicSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white,height: 1.5),
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20),
                  Text('177 Calories, 7.2g Fat, 6.8g Protein',
                    style: GoogleFonts.roboto(fontSize: 14, color: Colors.orange),),
                ],
              ),

              SizedBox(height: 20),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 70),
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20, right: 20,),
                        child: Text ('Ingredients',
                            style: GoogleFonts.publicSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors. white, height: 1.5)),
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 70),
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20, right: 20,),
                        child: Text (
                          'Egg, Vanilla Extract, Ground Cinnamon, Milk, Bread',
                          style: GoogleFonts.roboto(fontSize: 14, height: 1.5, color: Colors.grey),),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 70),
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20, right: 20,),
                        child: Text ('Steps',
                            style: GoogleFonts.publicSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white, height: 1.5)),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(left: 20, top: 5),
                child: Text('1. Whisk egg, vanilla and cinnamon in shallow dish. Stir in milk.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('2. Dip bread slices in egg mixture, turning to coat evenly on both sides.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('3. Cook bread slices until browned.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('4. Add vanilla extract and ground cinnamon then mix it well.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('5. French toast ready to serve!',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
            ]
        )

    );
  }
}