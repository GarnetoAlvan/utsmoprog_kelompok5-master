import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:UTS_Kelompok5/database/database_instance.dart';
import 'package:UTS_Kelompok5/models/activity_model.dart';

class UpdateScreen extends StatefulWidget {
  final TransaksiModel transaksiMmodel;
  const UpdateScreen({Key? key, required this.transaksiMmodel})
      : super(key: key);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  DatabaseInstance databaseInstance = DatabaseInstance();
  TextEditingController nameController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  int _value = 1;

  @override
  void initState() {
    // TODO: implement initState
    databaseInstance.database();
    nameController.text = widget.transaksiMmodel.name!;
    totalController.text = widget.transaksiMmodel.total!.toString();
    _value = widget.transaksiMmodel.type!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Ups! Updating somthing"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                Text("Total Calories (kcal)"),
                TextField(
                  controller: totalController,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150,0,0,0),
                  child: ElevatedButton(
                      onPressed: () async {
                        await databaseInstance.update(widget.transaksiMmodel.id!, {
                          'name': nameController.text,
                          'type': _value,
                          'total': totalController.text,
                          'updated_at': DateTime.now().toString()
                        });
                        Navigator.pop(context);
                      },
                      child: Text("Update"), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange))),
                ),
              ],
            ),
          )),
    );
  }
}