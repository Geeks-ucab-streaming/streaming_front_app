import 'package:flutter/material.dart';

import '../pages/multimedia_related/artist_view.dart';
import '../pages/multimedia_related/home_page.dart';
import '../pages/multimedia_related/search_page.dart';
import '../pages/user_related/iniciar_sesion.dart';
import '../pages/user_related/landing_page.dart';
import '../pages/user_related/login_page.dart';
import '../pages/user_related/profile_page.dart';

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
