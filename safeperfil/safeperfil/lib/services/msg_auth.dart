import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgAuth {
  static GlobalKey<ScaffoldMessengerState> msgkey =
      GlobalKey<ScaffoldMessengerState>();

  static seeSnackbar(String msg) {
    final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          msg,
          style: const TextStyle(color: Colors.white),
        ));

    msgkey.currentState!.showSnackBar(snackBar);
  }
}
