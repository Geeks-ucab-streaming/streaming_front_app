import 'package:flutter/material.dart';

import '../pages/multimedia_related/screens/screens.dart';
import '../pages/user_related/screens/screens.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  /*
  redirect: (BuildContext context, GoRouterState state) {
  if (AuthState.of(context).isSignedIn) {
    return '/signin';
  } else {
    return null;
  }   
},
*/
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LandingPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'sign-in',
          builder: (BuildContext context, GoRouterState state) {
            return const SignIn();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'artist/:artistId',
              builder: (BuildContext context, GoRouterState state) {
                return ArtistView(
                    artistId: state.pathParameters['artistId'] as String);
              },
            ),
            GoRoute(
              path: 'profile',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfilePage();
              },
            ),
            GoRoute(
              path: 'search',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfilePage();
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
