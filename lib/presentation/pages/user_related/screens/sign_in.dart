import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streaming_front_app/domain/auth/enums/enums.dart';

import '../../../../application/auth/use_cases/use_cases.dart';
import '../../core/widgets/widgets.dart';

class SignIn extends HookConsumerWidget {
  const SignIn({super.key});

  void handleLoginClick({
    required BuildContext context,
    required WidgetRef ref,
    required LoginStateEnum loginProvider,
    required String phone,
    required bool showErrorMessage,
    required String errorMessage,
  }) async {
    await ref.read(loginHelperProvider.notifier).login(phone: phone);

    print("Valor del estado del Login helper: ${loginProvider.toString()}");
    //pass, wrongValues, error, unChange
    switch (loginProvider) {
      case LoginStateEnum.pass:
        context.goNamed('home');
        break;
      case LoginStateEnum.wrongValues:
        errorMessage = "Valores incorrectos";
        showErrorMessage = true;
        break;
      case LoginStateEnum.error:
        errorMessage = "Server error";
        showErrorMessage = true;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // login state
    final LoginStateEnum loginProvider = ref.watch(loginHelperProvider);
    // text controller from react hooks
    final phoneController = useTextEditingController();
    // show error message
    bool showErrorMessage = false;
    String errorMessage = "";

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
                    maxWidth: 350,
                    controller: phoneController,
                  ),
                  const SizedBox(height: 30),
                  createButton(
                      actionToDo: () {
                        handleLoginClick(
                          context: context,
                          ref: ref,
                          loginProvider: loginProvider,
                          errorMessage: errorMessage,
                          showErrorMessage: showErrorMessage,
                          phone: phoneController.text,
                        );
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
