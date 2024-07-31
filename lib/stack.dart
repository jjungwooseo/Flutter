import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.yellow,
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(top: 50, left: 50),
            color: Colors.blue,
          ),
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(top: 100, left: 100),
            color: Colors.green,
          ),
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(top: 150, left: 150),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}