import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const DefaultBackground(),
          SingleChildScrollView(
            // Añadido SingleChildScrollView aquí
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 180),
                  const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Número de teléfono',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'Ingresa tu número de teléfono',
                    controller: _controller,
                    maxWidth: 350,
                  ),
                  const SizedBox(height: 30),
                  createButton(
                      actionToDo: () {
                        context.go('/home');
                      },
                      buttonText: 'Iniciar Sesión',
                      maxWidth: 350),
                  const SizedBox(height: 50),
                  const Text(
                    'Subscribete',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      //style: defaultStyle,
                      children: <TextSpan>[
                        GenericText(
                          text:
                              'Si no tienes cuenta suscribete con tu operadora',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(44, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: Center(
                        child: Image.asset(
                          'assets/images/digitel_logo.png',
                          height: 100,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(44, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: Center(
                        child: Image.asset(
                          'assets/images/movistar_logo.png',
                          height: 100,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
