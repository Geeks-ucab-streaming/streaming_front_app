import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  void _incrementCounter() {
    setState(() {});
  }

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
                        Colors.deepPurple,
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
              decoration: const BoxDecoration(color: Colors.deepPurple),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: IntrinsicWidth(
                child: Column(
                  children: [
                    const Text(
                      'Te brindamos la experiencia de estar en Aqustico 7 días gratis.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.lightBlueAccent),
                        ),
                      ),
                      child: const Text(
                        'REGISTRATE AQUÍ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        //style: defaultStyle,
                        children: <TextSpan>[
                          const TextSpan(
                            text: '¿Tienes una cuenta? ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                              text: 'Inicia sesión',
                              style: const TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 16,
                              ),
                              //style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Inicia Sesion"');
                                }),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        //style: defaultStyle,
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'O ingresa como ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                              text: 'Invitado',
                              style: const TextStyle(
                                  color: Colors.lightBlueAccent, fontSize: 16),
                              //style: linkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
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
