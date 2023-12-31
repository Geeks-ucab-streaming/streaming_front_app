import 'package:flutter/material.dart';

import '../pages/multimedia_related/screens/screens.dart';
import '../pages/user_related/screens/screens.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  /*
  redirect: (BuildContext context, GoRouterState state) {
  if (AuthState.of(context).isSignedIn) {
    return '/sign-in';
  } else {
    return null;
  }   
},
*/
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'landing',
      builder: (BuildContext context, GoRouterState state) {
        return const LandingPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sign-in',
          name: 'sign-in',
          builder: (BuildContext context, GoRouterState state) {
            return const SignIn();
          },
        ),
        GoRoute(
          path: 'login',
          name: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: 'home',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'artist/:artistId',
              name: 'artist',
              builder: (BuildContext context, GoRouterState state) {
                return ArtistView(
                    artistId: state.pathParameters['artistId'] as String);
              },
            ),
            GoRoute(
              path: 'profile',
              name: 'profile',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfilePage();
              },
            ),
            GoRoute(
              path: 'search',
              name: 'search',
              builder: (BuildContext context, GoRouterState state) {
                return const SearchPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class AppRoutes {
  AppRoutes();

  static Map<String, Widget Function(BuildContext)> getRoutes(
      BuildContext context) {
    return {
      //'/landing': (context) => const LandingPage(),
      //'/inicio-sesion': (context) => const SignIn(),
      //'/login': (context) => const LoginPage(),
      //'/perfil': (context) => const ProfilePage(),
      //'/home': (context) => HomePage(),
      //'/artist': (context) => const ArtistView(),
      //'/search': (context) => const SearchPage(),
    };
  }
}
