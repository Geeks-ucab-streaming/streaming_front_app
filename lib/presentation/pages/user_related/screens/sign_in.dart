import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streaming_front_app/domain/auth/enums/enums.dart';

import '../../../../application/auth/use_cases/use_cases.dart';
import '../../core/widgets/widgets.dart';

class SignIn extends StatefulHookConsumerWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  // local state variables
  String _errorMessage = 'Hi this is default error message';
  bool _showErrorMessage = false;

  void handleLoginClick({
    required LoginStateEnum loginProvider,
    required String phone,
  }) async {
    await ref.read(loginHelperProvider.notifier).login(phone: phone);
  }

  void handleLoginResponse({
    required WidgetRef ref,
    required LoginStateEnum loginProvider,
  }) {
//pass, wrongValues, error, unChange
    switch (loginProvider) {
      case LoginStateEnum.pass:
        // do nothing for now
        break;
      case LoginStateEnum.wrongValues:
        _errorMessage = "Valores incorrectos";
        _showErrorMessage = true;
        break;
      case LoginStateEnum.error:
        _errorMessage = "Server error";
        _showErrorMessage = true;
        break;
      default:
    }
  }

  void handleSignInClick({
    required String phone,
    required AvailableOperators cellphoneOperator,
  }) async {
    await ref.read(signInHelperProvider.notifier).signIn(
          phone: phone,
          cellphoneOperator: cellphoneOperator,
        );
  }

  void handleSignInResponse({
    required String? signInMessage,
  }) {
    if (signInMessage != null) {
      _errorMessage = signInMessage;
      _showErrorMessage = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    // login state
    final LoginStateEnum loginProvider = ref.watch(loginHelperProvider);
    // sign-in state
    final String? signInProvider = ref.watch(signInHelperProvider);
    // text controller from react hooks
    final phoneController = useTextEditingController();

    // handle the response of the login
    handleLoginResponse(
      ref: ref,
      loginProvider: loginProvider,
    );
    // handle the response of the sign-in
    handleSignInResponse(signInMessage: signInProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const DefaultBackground(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 140),
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
                      maxWidth: MediaQuery.of(context).size.width - 40,
                      controller: phoneController,
                      iconSuffixData: Icons.error_outline,
                    ),
                    // error message if there is a problem
                    if (_showErrorMessage) ...[
                      const SizedBox(height: 20),
                      ErrorInputMessage(
                        message: _errorMessage,
                        iconData: Icons.error,
                      ),
                    ],
                    const SizedBox(height: 20),
                    createButton(
                      actionToDo: () {
                        handleLoginClick(
                          loginProvider: loginProvider,
                          phone: phoneController.text,
                        );
                      },
                      buttonText: 'Iniciar Sesión',
                      maxWidth: MediaQuery.of(context).size.width - 40,
                    ),
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
                        onPressed: () {
                          handleSignInClick(
                            phone: phoneController.text,
                            cellphoneOperator: AvailableOperators.digitel,
                          );
                        },
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
                        onPressed: () {
                          handleSignInClick(
                            phone: phoneController.text,
                            cellphoneOperator: AvailableOperators.movistar,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
