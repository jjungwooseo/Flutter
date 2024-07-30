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
        title: const Text("안녕하세요."),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            // 맨 아래 갈색 배경
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                color: Colors.brown,
              ),
            ),
            // 중앙의 푸른색 도형
            Center(
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
              ),
            ),
            // 왼쪽 갈색 위의 노란색 도형
            Positioned(
              bottom: MediaQuery.of(context).size.height / 5,
              left: 20, // 원하는 위치로 조정 가능
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MyHomePage(),
  ));
}
