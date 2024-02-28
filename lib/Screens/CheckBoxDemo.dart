import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

  bool isAndroidChecked = false;
  bool isIOSChecked     = false;
  bool isFlutterChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox"),),
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [

          Row(
            children: [
              
              Checkbox(value: isAndroidChecked, onChanged: (value){
                setState(() {
                  isAndroidChecked = value!;
                });
              }),
              
              Text("Android",style: TextStyle(fontSize: 18,color: Colors.pinkAccent),)
            ],
          ),

          Row(
            children: [

              Checkbox(value: isIOSChecked, onChanged: (value){
                setState(() {
                  isIOSChecked = value!;
                });
              }),

              Text("IOS",style: TextStyle(fontSize: 18,color: Colors.pinkAccent),)
            ],
          ),

          Row(
            children: [

              Checkbox(value: isFlutterChecked, onChanged: (value){
                setState(() {
                  isFlutterChecked = value!;
                });
              }),

              Text("Flutter",style: TextStyle(fontSize: 18,color: Colors.pinkAccent),)
            ],
          ),

          Center(child: ElevatedButton(onPressed: (){
            setState(() {

              if(isAndroidChecked) {
                print("Android is Checked");
              }

              if(isIOSChecked) {
                print("IOS is Checked");
              }

              if(isFlutterChecked) {
                print("Flutter is Checked");
              }



            });
          }, child:Text("SUBMIT",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),)



        ],
      ),
    );
  }
}
