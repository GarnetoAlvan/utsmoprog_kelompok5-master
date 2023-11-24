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
                height: 200,
                width: 400,
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/Sticks.png'),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text('Sticks',
                  style: GoogleFonts.publicSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white,height: 1.5),
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20),
                  Text('230 Calories, 18g Fat, 16g Protein',
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
                          'Eggs, Water, Bread Crumbs, Garlic Salt, Flour, Cornstarch, Oil, Mozzarella Cheese Sticks',
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
                child: Text('1. Whisk water and eggs together in a small bowl. Mix bread crumbs and garlic salt together in a medium bowl. Blend flour and cornstarch together in a third bowl..',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('2. Dredge mozzarella stick in flour, dip into egg mixture, and press it into bread crumbs to coat.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('3. Fry them until golden brown for 30 seconds.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('4. Lift it and drain on paper towels.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('5. Serve hot and enjoy!',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
            ]
        )

    );
  }
}