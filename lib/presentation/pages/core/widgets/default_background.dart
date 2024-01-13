import 'package:flutter/material.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 27, 19, 39),
          ),
          // Primer degradado radial desde la esquina superior derecha
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  colors: [
                    Color.fromARGB(255, 62, 17, 131), // Color inicial (esquina)
                    Colors.transparent, // Transición a transparente
                  ],
                ),
              ),
            ),
          ),
          // Segundo degradado radial desde la esquina inferior izquierda
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
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
}
