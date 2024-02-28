import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  const RadioButtonDemo({super.key});

  @override
  State<RadioButtonDemo> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  int selectedGender = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("RadioButton"), backgroundColor: Colors.pinkAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // MALE
          RadioListTile(
            title: const Text("MALE"),
            value: 0,
            groupValue: selectedGender,
            onChanged: (status) {
              setState(
                () {
                  selectedGender = status!;
                },
              );
            },
          ),

          // FE-MALE
          RadioListTile(
            title: const Text("FEMALE"),
            value: 1,
            groupValue: selectedGender,
            onChanged: (status) {
              setState(
                    () {
                  selectedGender = status!;
                },
              );
            },
          ),

          // MALE
          RadioListTile(
            title: const Text("OTHERS"),
            value: 2,
            groupValue: selectedGender,
            onChanged: (status) {
              setState(
                    () {
                  selectedGender = status!;
                },
              );
            },
          ),
          
          Center(child: ElevatedButton(onPressed: (){
            setState(() {

              if (selectedGender == 0) {
                print("MALE is Selected");
              } else if (selectedGender == 1) {
                print("FEMALE is Selected");
              } else if (selectedGender == 2) {
                print("Others is Selected");
              }

            });

          }, child: Text("SUBMIT")),)


        ],
      ),
    );
  }
}
