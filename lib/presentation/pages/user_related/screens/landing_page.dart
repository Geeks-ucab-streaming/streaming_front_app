import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/widgets.dart';
import '../../../../application/core/use_cases/use_cases.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider to listen
    final advertisement = ref.watch(getRandomAdvertisementProvider);

    final advertisementWidget = switch (advertisement) {
      AsyncData(:final value) => ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: Image.memory(
                  Uint8List.fromList(value.image),
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ).image,
                fit: BoxFit.fill,
              ),
            ),
            height: 400,
          ),
        ),
      AsyncError(:final error) => SizedBox(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width / 4,
            ),
            child: ErrorMessage(error: error),
          ),
        ),
      _ => SizedBox(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width / 4,
            ),
            child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
          ),
        ),
    };

    return Scaffold(
      body: Stack(
        children: [
          const DefaultBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              advertisementWidget,
              Expanded(
                child: Container(
                  //decoration: const BoxDecoration(
                  //color: Color.fromARGB(255, 42, 25, 94)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
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
                          actionToDo: () => context.go('/sign-in'),
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
                                    context.go('/login');
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
                                    context.go('/home');
                                  }),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        const Image(
                          height: 130,
                          image: AssetImage('assets/images/conectium.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
