import 'package:flutter/material.dart';
import 'package:test_on_screen_keyboard/keyboard/keyboard.dart';
import 'package:test_on_screen_keyboard/keyboard/keyboard.type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KeyboardTest(),
    );
  }
}

class KeyboardTest extends StatefulWidget {
  const KeyboardTest({super.key});

  @override
  State<KeyboardTest> createState() => _KeyboardTestState();
}

class _KeyboardTestState extends State<KeyboardTest> {
  late TextEditingController _controllerText;

  @override
  void initState() {
    _controllerText = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Color(0xffE9EFF7),
            child: VirtualKeyboard(
              textColor: Color(0xff1A1A1A),
              fontSize: 25,
              height: 400,
              type: VirtualKeyboardType.Alphanumeric,
              textController: _controllerText,
            ),
          )
        ],
      ),
    );
  }
}
