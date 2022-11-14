import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isSwitched = true;
  bool isChecked = false;
  bool isCheckedCupertino = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox & Switch'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Checkbox(
                value: isChecked,
                onChanged: ((value) {
                  setState(() {
                    isChecked = value!;
                  });
                })),
            CupertinoSwitch(
                value: isCheckedCupertino,
                onChanged: ((value) {
                  setState(() {
                    isCheckedCupertino = value;
                  });
                }))
          ],
        ),
      ),
    );
  }
}
