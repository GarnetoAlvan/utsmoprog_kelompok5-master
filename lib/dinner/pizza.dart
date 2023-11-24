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
                  child: Image.asset('assets/Pizza.png'),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text('Pizza',
                  style: GoogleFonts.publicSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white,height: 1.5),
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20),
                  Text('285 Calories, 10g Fat, 12g Protein',
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
                          'Flour, Salt, Sugar, Yeast, Water, Oil, Tomato Sauce, Pepper, Garlic Powder, Pepperoni, Cheese',
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
                child: Text('1. In large bowl, Mix flour, salt, sugar, yeast then add water and oil into mixture.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('2. Turn onto flour and knead for 2 minutes then place it in a greased bowl.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('3. After 20 minutes, Pat dough into a circle.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('4. Spread tomato sauce over the crust then put pepperoni and cheese.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('5. Bake it until light brown',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
            ]
        )

    );
  }
}