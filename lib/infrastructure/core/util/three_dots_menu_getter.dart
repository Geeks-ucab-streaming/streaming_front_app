import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../application/auth/use_cases/use_cases.dart';
import '../../../domain/auth/enums/enums.dart';
import 'util.dart';

class ThreeDotsMenuGetter {
  static List<Map<String, Function>> getHomeThreeDotsMenu({
    required BuildContext context,
    required AuthStateEnum userState,
    required WidgetRef ref,
  }) {
    List<Map<String, Function>> menu = [];
    switch (userState) {
      case AuthStateEnum.authenticated:
        menu.add({'Perfil': () => context.goNamed('profile')});
        menu.add({
          'Términos y condiciones': () => UrlLauncher.launchUrlUtil(
                Uri.parse('https://aqustico.com/terminos-y-condiciones/'),
              )
        });
        menu.add({
          'Cerrar Sesión': () => ref.read(authProvider.notifier).logout(),
        });
      case AuthStateEnum.unauthenticated:
        menu.add({'Iniciar Sesión': () => context.goNamed('login')});
        menu.add({'Registrarse': () => context.goNamed('sign-in')});
      default:
        menu.add({'Iniciar Sesión': () => context.goNamed('login')});
        menu.add({'Registrarse': () => context.goNamed('sign-in')});
    }
    return menu;
  }

  static List<PopupMenuItem<int>> getMenu({
    required WidgetRef ref,
  }) {
    // get the user state
    final authState = ref.read(authProvider);
    // construct the list to return
    List<PopupMenuItem<int>> menuItems = [];

    switch (authState.state) {
      case AuthStateEnum.authenticated:
        menuItems.add(
          const PopupMenuItem<int>(
            value: 0,
            child: Text('Perfil'),
          ),
        );
        menuItems.add(
          const PopupMenuItem<int>(
            value: 1,
            child: Text('Términos y condiciones'),
          ),
        );
        menuItems.add(
          const PopupMenuItem<int>(
            value: 2,
            child: Text('Cerrar Sesión'),
          ),
        );
      case AuthStateEnum.unauthenticated:
        menuItems.add(
          const PopupMenuItem<int>(
            value: 0,
            child: Text('Iniciar Sesión'),
          ),
        );
        menuItems.add(
          const PopupMenuItem<int>(
            value: 1,
            child: Text('Registrarse'),
          ),
        );

      default:
        menuItems.add(
          const PopupMenuItem<int>(
            value: 0,
            child: Text('Iniciar Sesión'),
          ),
        );
        menuItems.add(
          const PopupMenuItem<int>(
            value: 1,
            child: Text('Registrarse'),
          ),
        );
    }
    return menuItems;
  }

  static void Function({required int item, required BuildContext context})
      getMenuHandler({
    required WidgetRef ref,
  }) {
    // get the user state
    final authState = ref.read(authProvider);
    if (authState.state == AuthStateEnum.authenticated) {
      return ({required int item, required BuildContext context}) => {
            switch (item) {
              0 => context.goNamed('profile'),
              1 => UrlLauncher.launchUrlUtil(
                  Uri.parse('https://aqustico.com/terminos-y-condiciones/'),
                ),
              2 => ref.read(authProvider.notifier).logout(),
              _ => null,
            }
          };
    } else if (authState.state == AuthStateEnum.unauthenticated) {
      return ({required int item, required BuildContext context}) => {
            switch (item) {
              0 => context.push('/login'),
              1 => context.push('/sign-in'),
              _ => null,
            }
          };
    } else {
      return ({required int item, required BuildContext context}) {};
    }
  }
}
