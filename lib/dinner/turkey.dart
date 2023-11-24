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
                  child: Image.asset('assets/turkey.png'),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text('Turkey',
                  style: GoogleFonts.publicSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white,height: 1.5),
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20),
                  Text('145 Calories, 4g Fat, 25g Protein',
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
                          'Turkey, Onion, Lemon, Herbs, Butter, Salt, Pepper, Celery, Carrots',
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
                child: Text('1. Preheat the oven and pat the turkey dry with paper towels then season it with salt and pepper.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('2. Fill the turkey with onion, lemon, and herbs.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('3. Make the herb butter with butter and fresh herbs then rub it entire outside of the turkey.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('4. Place the turkey in the oven and roast it.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child: Text('5. Let the turkey rest for 30 minutes before carving.',
                    style: GoogleFonts.inter(fontSize: 14, color: Colors.white, height: 1.5)),
              ),
            ]
        )

    );
  }
}