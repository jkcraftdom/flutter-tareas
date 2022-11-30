import 'package:flutter/material.dart';

class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 74, 21, 134),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 200,
                  child: Image.asset('assets/image.jpg'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Iniciar sesion con tu correo',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 22, 46),
                    hintText: 'Correo Electronico',
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.all(18)),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  print('Bienvenido');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                height: 50,
                minWidth: double.infinity,
                color: const Color(0xff0FCF2EA),
                child: const Text(
                  'CONTINUAR',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]),
      ),
    );
  }
}
