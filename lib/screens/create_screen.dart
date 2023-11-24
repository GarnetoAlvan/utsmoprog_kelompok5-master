import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:UTS_Kelompok5/database/database_instance.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  DatabaseInstance databaseInstance = DatabaseInstance();
  TextEditingController nameController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  int _value = 1;

  @override
  void initState() {
    // TODO: implement initState
    databaseInstance.database();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("A day Healthier, a day Stronger!"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Activity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontStyle: FontStyle.italic)),
                TextField(
                  controller: nameController,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Type of Activity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontStyle: FontStyle.italic)),
                ListTile(
                  title: Text("Gaining Calories"),
                  leading: Radio(
                      groupValue: _value,
                      value: 1,
                      onChanged: (value) {
                        setState(() {
                          _value = int.parse(value.toString());
                        });
                      }),
                ),
                ListTile(
                  title: Text("Burning Calories"),
                  leading: Radio(
                      groupValue: _value,
                      value: 2,
                      onChanged: (value) {
                        setState(() {
                          _value = int.parse(value.toString());
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Total Calories (kcal)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontStyle: FontStyle.italic)),
                TextField(
                  controller: totalController,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                  child: ElevatedButton(
                      onPressed: () async {
                        int idInsert = await databaseInstance.insert({
                          'name': nameController.text,
                          'type': _value,
                          'total': totalController.text,
                          'created_at': DateTime.now().toString(),
                          'updated_at': DateTime.now().toString(),
                        });
                        print("Success input : " + idInsert.toString());
                        Navigator.pop(context);
                      },
                      child: Text("Save"), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange))),
                ),
              ],
            ),
          )),
    );
  }
}