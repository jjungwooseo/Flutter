import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text("성공페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Username : ${args['username']}"),
            Text("Email : ${args['email']}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭 시 수행할 작업 추가
              },
              child: Text('확인'),
            ),
          ],
        ),
      ),
    );
  }
}
