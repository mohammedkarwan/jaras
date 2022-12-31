import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String _gender = 'M';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          color: Colors.green,
          child: Material(
            child: RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: const Text('Female'),
              value: 'F',
              groupValue: _gender,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _gender = value;
                  });
                }
              },
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Material(
            child: RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: const Text('Female'),
              value: 'M',
              groupValue: _gender,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _gender = value;
                  });
                }
              },
            ),
          ),
        ),
      ]),
    );
  }
}
