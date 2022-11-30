import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key});

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
  double _currentSliderValue = 40;
  double _cupernum = 0;

  double _inicio = 0;
  double _fin = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 100.0,
                activeColor: CupertinoColors.systemBlue,
                thumbColor: CupertinoColors.activeOrange,
                value: _cupernum,
                onChanged: (value) {
                  setState(() {
                    _cupernum = value;
                  });
                },
              ),
            ),
            RangeSlider(
              values: RangeValues(_inicio, _fin),
              activeColor: Colors.green,
              inactiveColor: Colors.amber,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                setState(() {
                  _inicio = value.start;
                  _fin = value.end;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
