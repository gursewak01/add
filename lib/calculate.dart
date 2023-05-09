import 'package:flutter/material.dart';

class calculateNum extends StatefulWidget {
  const calculateNum({super.key});

  @override
  State<calculateNum> createState() => _calculateNumState();
}

class _calculateNumState extends State<calculateNum> {
  TextEditingController userController = TextEditingController();
  int currCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
              controller: userController,
              decoration: InputDecoration(border: OutlineInputBorder()),
          ),
            TextField(
              controller: userController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
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
    );
  }
}