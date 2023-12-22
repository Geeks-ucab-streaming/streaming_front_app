
import 'package:flutter/material.dart';

class SubscribeCard extends StatelessWidget {
  const SubscribeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,  
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: InkWell(
        onTap: () {
          //Falta llamar a la vista de suscribirse
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          color: const Color.fromARGB(255, 253, 159, 56),
          child: const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'SUSCRÍBETE AQUÍ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Para que vivas la',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'experiencia Aqustico.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Icon(
                Icons.subscriptions_rounded,
                color: Color.fromARGB(255, 222, 25, 164),
                size: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}