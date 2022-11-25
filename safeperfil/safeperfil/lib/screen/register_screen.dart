import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:safeperfil/providers/login_provider.dart';
import 'package:safeperfil/routes/route.dart';
import 'package:safeperfil/services/service_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_mjlh3hcy.json'),
                ),
                const Text('REGISTRO',
                    style: TextStyle(fontSize: 28, color: Colors.white)),
                ChangeNotifierProvider(
                  create: (context) => LoginProvider(),
                  child: _registerForm(),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, MyRoutes.rLogin);
                    },
                    child: Text('Iniciar Sesion'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _registerForm extends StatefulWidget {
  const _registerForm({super.key});

  @override
  State<_registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<_registerForm> {
  bool _isPassword = true;

  void _viewPassword() {
    setState(() {
      _isPassword = !_isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
            key: loginProvider.formKey,
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(color: Colors.black),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: _buildDecoration(
                      hintText: 'dev@flutter.com',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      )),
                  onChanged: (value) => loginProvider.email = value,
                  validator: (value) {
                    String caracteres =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = RegExp(caracteres);

                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'No es un correo  valido';
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.black),
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  obscureText: _isPassword,
                  decoration: _buildDecoration(
                      suffixIcon: InkWell(
                        onTap: _viewPassword,
                        child: Icon(_isPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintText: '*****',
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.grey,
                      )),
                  onChanged: (value) => loginProvider.password = value,
                  validator: (value) {
                    return (value != null && value.length >= 8)
                        ? null
                        : 'Debe tener minimo 8 caracteres';
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: MaterialButton(
                    onPressed: loginProvider.isLoading
                        ? null
                        : () async {
                            FocusScope.of(context).unfocus();

                            final authService = Provider.of<AuthService>(
                                context,
                                listen: false);

                            if (!loginProvider.isValidForm()) return;

                            loginProvider.isLoading = true;

                            final String? errorMessage =
                                await authService.createUser(
                                    loginProvider.email,
                                    loginProvider.password);

                            if (errorMessage == null) {
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacementNamed(
                                  context, MyRoutes.rHome);
                            } else {
                              loginProvider.isLoading = false;
                            }
                          },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    disabledColor: Colors.green,
                    elevation: 1,
                    color: Colors.green,
                    child: (loginProvider.isLoading)
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text('REGISTRAR'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

InputDecoration _buildDecoration({
  final String? hintText,
  final Widget? prefixIcon,
  final Widget? suffixIcon,
}) {
  return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.all(18),
      errorStyle: const TextStyle(fontSize: 18),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(15)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 2, color: Colors.green),
        borderRadius: BorderRadius.circular(15),
      ),
      border: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(15)));
}
