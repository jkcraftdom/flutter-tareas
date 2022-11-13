import 'package:flutter/material.dart';
import 'package:tarea_4/widgets/button.dart';
import 'package:tarea_4/widgets/input.dart';

import '../widgets/space.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    const colorPrimary = Color(0xff284BC1);
    const colorSecundary = Color(0xff9B9B9B);
    const colorText = Color(0xff6A6A6A);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(100, 238, 219, 191),
                    ),
                    margin: const EdgeInsets.only(right: 10.0),
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/user.png'),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 28, color: colorText),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/close.png'),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                width: 320,
                child: Text(
                  'Login to your account - enjoy exclusive features and many more.',
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.5,
                    color: colorSecundary,
                  ),
                ),
              ),
              const SpaceWidget(),
              const InputWidget(
                label: 'Email',
                hintText: 'email@company.com',
                keyboardType: TextInputType.emailAddress,
              ),
              const SpaceWidget(),
              const InputWidget(
                label: 'Password',
                hintText: '******',
                keyboardType: TextInputType.text,
                isPassword: true,
              ),
              const SpaceWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    width: 24,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      activeColor: colorPrimary,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Remember me',
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
                  const Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 18, color: colorSecundary),
                  )
                ],
              ),
              const SpaceWidget(
                height: 30,
              ),
              const ButtonWidget(
                bg: colorPrimary,
                label: 'Login',
                color: Colors.white,
              ),
              const SpaceWidget(),
              Row(
                // ignore: sort_child_properties_last
                children: const [
                  Text(
                    'Or',
                    style: TextStyle(fontSize: 18, color: colorSecundary),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SpaceWidget(),
              const ButtonIconWidget(
                  bg: Colors.white,
                  color: colorText,
                  label: 'Google',
                  icon: 'assets/google.png'),
              const SpaceWidget(),
              const ButtonIconWidget(
                  bg: Colors.white,
                  color: colorText,
                  label: 'Twitter',
                  icon: 'assets/twitter.png')
            ],
          ),
        ),
      ),
    );
  }
}
