import 'package:flutter/material.dart';

Widget default_background(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Stack(
      children: [
        // Primer degradado radial desde la esquina superior derecha
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.5,
                colors: [
                  Color.fromARGB(255, 62, 17, 131), // Color inicial (esquina)
                  Color.fromARGB(255, 35, 23, 59), // Transición a transparente
                ],
              ),
            ),
          ),
        ),
        // Segundo degradado radial desde la esquina inferior izquierda
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomLeft,
                radius: 1.5,
                colors: [
                  Color.fromARGB(255, 62, 17, 131), // Color inicial (esquina)
                  Colors.transparent, // Transición a transparente
                ],
              ),
            ),
          ),
        ),
        // Aquí puedes agregar más contenido si es necesario
      ],
    ),
  );
}
