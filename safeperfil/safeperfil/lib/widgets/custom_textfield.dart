import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  // final String? initialValue;
  // final Function(String)? onChange;

  const CustomTextFieldWidget(
      {super.key,
      this.keyboardType,
      this.hintText,
      this.prefixIcon,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        keyboardType: keyboardType,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green, width: 2),
                borderRadius: BorderRadius.circular(10))));
  }
}
