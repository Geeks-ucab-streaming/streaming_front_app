import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streaming_front_app/domain/core/advetisement.dart';
import 'package:streaming_front_app/domain/core/repository_error.dart';
import '../core/widgets/button_widget.dart';
import '../core/widgets/generic_Text.dart';
// Providers
import '../../providers/services/advertisement/get_random_advertisement.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider to listen
    final advertisement = ref.watch(getRandomAdvertisementProvider);
    final advertisementImage = switch (advertisement) {
      AsyncData(:final value) => Image.memory(
          Uint8List.fromList(value.fold((l) => [], (r) => r.image.image)),
          width: 250,
          height: 250,
          fit: BoxFit.contain,
        ).image,
      AsyncError(:final error) =>
        Image.network('https://picsum.photos/200/300').image,
      _ => Image.network('https://picsum.photos/200/300').image,
    };

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: advertisementImage,
                    fit: BoxFit.fill,
                  ),
                ),
                height: 400,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color.fromARGB(255, 42, 25, 94),
                      ],
                      stops: [
                        0.0,
                        1.0,
                      ]),
                ),
                height: 400,
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 42, 25, 94)),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: IntrinsicWidth(
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: GenericText(
                        text:
                            'Te brindamos la experiencia de estar en Aqustico 7 días gratis.',
                        fontSize: 18,
                        isBold: true,
                      ),
                    ),
                    const SizedBox(height: 30),
                    createButton(
                      actionToDo: () =>
                          Navigator.pushNamed(context, '/inicio-sesion'),
                      buttonText: 'REGISTRATE AQUI',
                    ),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          GenericText(text: '¿Tienes una cuenta?'),
                          GenericText(
                              text: ' Inicia sesión',
                              color: Colors.lightBlueAccent,
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              })
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        //style: defaultStyle,
                        children: <TextSpan>[
                          GenericText(text: 'O ingresa como '),
                          GenericText(
                              text: 'Invitado',
                              color: Colors.lightBlueAccent,
                              onTap: () {
                                Navigator.pushNamed(context, '/home');
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Image.network('https://picsum.photos/150'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
