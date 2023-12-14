import 'package:flutter/material.dart';

import '../pages/multimedia_related/screens/screens.dart';
import '../pages/user_related/screens/screens.dart';

class AppRoutes {
  AppRoutes();

  static Map<String, Widget Function(BuildContext)> getRoutes(
      BuildContext context) {
    return {
      '/landing': (context) => const LandingPage(),
      '/inicio-sesion': (context) => const NewSesion(title: 'Inicio sesion'),
      '/login': (context) => const LoginPage(),
      '/perfil': (context) => const ProfilePage(),
      '/home': (context) => HomePage(),
      '/artist': (context) => const ArtistView(title: 'Artist'),
      '/search': (context) => const SearchPage(),
    };
  }
}
