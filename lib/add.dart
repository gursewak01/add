import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class addNum extends StatefulWidget {
  const addNum({super.key});

  @override
  State<addNum> createState() => _addNumState();
}

class _addNumState extends State<addNum> {
  @override
  Widget build(BuildContext context) {
    // TextEditingController userController = TextEditingController();
    TextEditingController userController1 = TextEditingController();
    TextEditingController userController2 = TextEditingController();
    int output = 0;


    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('Add two numbers', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: userController1,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter first number'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: userController2,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter second number'),
                ),
              ),
              Text(output.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),

              ElevatedButton(onPressed: (){
                // userVal1 = userController1.text;
                // userVal2 = userController2.text;

                setState(() {
                                output = int.parse(userController1.text) + int.parse(userController2.text);
print('Sum: $output');

                });
              }, child: Text('ADD')),
            ],
          ),
          width: 400,
          height: 400,
          color: Colors.blue[100],
         
        ),
      ),
    );
  }
}