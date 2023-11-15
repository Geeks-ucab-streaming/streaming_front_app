import 'package:flutter/material.dart';

import '../../features/user_related/presentation/pages/iniciar_sesion.dart';
import '../../features/user_related/presentation/pages/landing_page.dart';
import '../../features/user_related/presentation/pages/profile_page.dart';

class AppRoutes {
  AppRoutes();

  static Map<String, Widget Function(BuildContext)> getRoutes(
      BuildContext context) {
    return {
      '/landing': (context) => const LandingPage(),
      '/inicio-sesion': (context) => const NewSesion(title: 'Inicio sesion'),
      '/perfil': (context) => const ProfilePage(),
    };
  }
}
