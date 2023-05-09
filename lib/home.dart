import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Color boxColor = Colors.red;
  int currCount = 0;
  // String userVal = 'N/A';
  TextEditingController userController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currCount.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),),
            // TextField(
            //   controller: userController,
            //   decoration: InputDecoration(border: OutlineInputBorder()),
            // ),
            // Container(
            //   width: 200,
            //   height: 300,
            //   color: boxColor,
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                              // userVal=userController.text;
                              currCount++;
                              // boxColor = Colors.green;
                              setState(() {});
                            }, child: Text('Increment')),
                ),
            ElevatedButton(onPressed: (){
              // userVal=userController.text;
              currCount--;
              // boxColor = Colors.green;
              setState(() {});
            }, child: Text('Decrement')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
