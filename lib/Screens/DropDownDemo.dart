import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  const DropDownDemo({super.key});

  @override
  State<DropDownDemo> createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {

  static const List<String> list = <String>['INDIA' , 'CHINA' , 'SINGAPORE' , 'AUSTRALIA' , 'AMERICA' , 'PAKISTAN'];

  String dropDownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DROPDOWN DEMO"),backgroundColor: Colors.pinkAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: DropdownButton<String>(
                value: dropDownValue,
                items: list.map<DropdownMenuItem<String>>((String status){
                  return DropdownMenuItem<String>(
                    value: status,
                    child: Text(status),
                  );
                }).toList(),
                onChanged: (selected){
                  setState(() {
                    dropDownValue = selected!;
                    print("$dropDownValue");
                  });
                }),
          )

        ],
      ),
    );
  }
}
