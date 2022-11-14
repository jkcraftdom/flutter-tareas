import 'package:flutter/material.dart';

class EmailPassWidge extends StatelessWidget {
  const EmailPassWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email & Password'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: 'Correo Electronico',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey)))),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.password,
                    color: Colors.black,
                    size: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey)))),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey))))
        ]),
      ),
    );
  }
}
