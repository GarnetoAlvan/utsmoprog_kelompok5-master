import 'package:UTS_Kelompok5/meal_planner/meal_planner_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:UTS_Kelompok5/workout/workout_tracker_view.dart';
import 'database/database_instance.dart';
import 'models/activity_model.dart';
import 'screens/create_screen.dart';
import 'screens/update_screen.dart';

class Calories extends StatefulWidget {
  const Calories({Key? key}) : super(key: key);

  @override
  State<Calories> createState() => _CaloriesState();
}

class _CaloriesState extends State<Calories> {
  DatabaseInstance? databaseInstance;

  Future _refresh() async {
    setState(() {});
  }

  @override
  void initState() {
    databaseInstance = DatabaseInstance();
    initDatabase();
    super.initState();
  }

  Future initDatabase() async {
    await databaseInstance!.database();
    setState(() {});
  }

  showAlertDialog(BuildContext contex, int idTransaksi) {
    Widget okButton = TextButton(
      child: Text("Yes"),
      onPressed: () {
        databaseInstance!.hapus(idTransaksi);
        Navigator.of(contex, rootNavigator: true).pop();
        setState(() {});
      },
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text("Attention!"),
      content: Text("Are you sure to delete?"),
      actions: [okButton],
    );

    showDialog(
        context: contex,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        color: Colors.deepOrange,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){
          print(index);
        },
        items: [
          IconButton(
            icon: Icon(Icons.restaurant_rounded, color: Colors.white),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MealPlannerView()))
                  .then((value) {
                setState(() {});
              });
            },
          ),

          IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Calories()))
                  .then((value) {
                setState(() {});
              });
            },
          ),
      IconButton(
        icon: Icon(Icons.fitness_center_rounded),
        color: Colors.white,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => WorkoutTrackerView()))
              .then((value) {
            setState(() {});
          });
        },
      ),
        ],
      ),
      appBar: AppBar(
        title: Text("Today's Activity"),
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CreateScreen()))
                  .then((value) {
                setState(() {});
              });
            },
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                    future: databaseInstance!.totalPemasukan(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text("-");
                      } else {
                        if (snapshot.hasData) {
                          return Text(
                              "Total Gain Calories : ${snapshot.data.toString()} kcal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.deepOrange));
                        } else {
                          return Text("");
                        }
                      }
                    }),
                SizedBox(
                  height: 10,
                ),
                FutureBuilder(
                    future: databaseInstance!.totalPengeluaran(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text("-");
                      } else {
                        if (snapshot.hasData) {
                          return Text(
                              "Total Burning Calories : ${snapshot.data.toString()} kcal", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black));
                        } else {
                          return Text("");
                        }
                      }
                    }),
                SizedBox(height: 20,),
                FutureBuilder<List<TransaksiModel>>(
                    future: databaseInstance!.getAll(),
                    builder: (context, snapshot) {
                      print('Result : ' + snapshot.data.toString());
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text("Loading...");
                      } else {
                        if (snapshot.hasData) {
                          return Expanded(
                            child: ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                      title: Text(snapshot.data![index].name!),
                                      subtitle: Text(
                                          snapshot.data![index].total!.toString() + "  kcal"),
                                      leading: snapshot.data![index].type == 1
                                          ? Icon(
                                        Icons.auto_awesome,
                                        color: Colors.deepOrange,
                                      )
                                          : Icon(
                                        Icons.bolt,
                                        color: Colors.black,
                                      ),
                                      trailing: Wrap(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        UpdateScreen(
                                                          transaksiMmodel:
                                                          snapshot
                                                              .data![index],
                                                        )))
                                                    .then((value) {
                                                  setState(() {});
                                                });
                                              },
                                              icon: Icon(
                                                Icons.edit,
                                                color: Colors.grey,
                                              )),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                showAlertDialog(context,
                                                    snapshot.data![index].id!);
                                              },
                                              icon: Icon(Icons.delete,
                                                  color: Colors.red))
                                        ],
                                      ));
                                }),
                          );
                        } else {
                          return Text("No data.");
                        }
                      }
                    })
              ],
            )),
      ),
    );
  }
}