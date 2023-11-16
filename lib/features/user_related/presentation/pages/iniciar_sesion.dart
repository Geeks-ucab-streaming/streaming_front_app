import 'package:flutter/material.dart';
import 'package:streaming_front_app/features/user_related/presentation/widgets/button_widget.dart';
import 'package:streaming_front_app/features/user_related/presentation/widgets/default_background.dart';
import 'package:streaming_front_app/features/user_related/presentation/widgets/generic_TextFormField.dart';

class NewSesion extends StatefulWidget {
  const NewSesion({super.key, required this.title});

  final String title;

  @override
  State<NewSesion> createState() => _MyNewSesionState();
}

class _MyNewSesionState extends State<NewSesion> {
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
          default_background(context),
          SingleChildScrollView(
            // Añadido SingleChildScrollView aquí
            child: Padding(
              padding: EdgeInsets.only(left: 20),
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
                    'Numero de identificación',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'Introduce tu numero de telefono',
                    controller: _controller,
                    maxWidth: 350,
                  ),
                  const SizedBox(height: 30),
                  createButton(
                      actionToDo: () {
                        Navigator.pushNamed(context, '/home');
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
                  const Text(
                    'Si no tienes cuenta suscribete con tu operadora',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
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
