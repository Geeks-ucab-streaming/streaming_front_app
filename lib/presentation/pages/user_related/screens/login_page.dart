import 'package:flutter/material.dart';

import '../../core/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DefaultBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 180),
                const Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Numero de identificación',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  hintText: 'Introduce tu numero de telefono',
                  controller: _controller,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Contraseña',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                const CustomTextFormField(
                  hintText: 'Introduce tu numero de telefono',
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        //style: defaultStyle,
                        children: <TextSpan>[
                          GenericText(text: '¿Olvidaste tu contraseña?'),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      createButton(
                        actionToDo: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        buttonText: 'Iniciar Sesión',
                        maxWidth: 350,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            //style: defaultStyle,
                            children: <TextSpan>[
                              GenericText(text: '¿Aun no tienes una cuenta? '),
                              GenericText(
                                  text: 'Regístrate',
                                  color: Colors.lightBlueAccent,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/inicio-sesion');
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
