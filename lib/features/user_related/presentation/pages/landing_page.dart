import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import '../widgets/generic_Text.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
                    image: Image.network('https://picsum.photos/200/300').image,
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
                    createButton(buttonText: 'REGISTRATE AQUI'),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          GenericText(text: '¿Tienes una cuenta?'),
                          GenericText(
                              text: ' Inicia sesión',
                              color: Colors.lightBlueAccent,
                              onTap: () {
                                Navigator.pushNamed(context, '/inicio-sesion');
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
                                print('Invitado"');
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
