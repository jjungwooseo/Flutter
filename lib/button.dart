import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("버튼페이지"),
      ),
      body:Container(
        child:Column(
          children: [
            Center(
              child:ElevatedButton(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow
                ),
                onPressed:(){print("ElevatedButton click");},
                child: Text("ElevatedButton 버튼"),

              ),
            ),
            Center(
              child:ElevatedButton(
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                ),
                onPressed:(){print("redButton click");},
                child: Text("redButton 버튼"),

              ),
            ),
            Center(
              child:ElevatedButton(
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                onPressed:(){print("BlueButton click");},
                child: Text("BlueButton 버튼"),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
