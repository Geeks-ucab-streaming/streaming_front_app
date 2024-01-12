import 'package:flutter/material.dart';
import 'package:streaming_front_app/presentation/pages/multimedia_related/screens/album_view.dart';
import 'package:streaming_front_app/presentation/pages/multimedia_related/screens/playlist_view.dart';

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
              path: 'playlist/:playlistId',
              name: 'playlist',
              builder: (BuildContext context, GoRouterState state) {
                return PlaylistView(
                    playlistId: state.pathParameters['playlistId'] as String);
              },
            ),
            GoRoute(
              path: 'album/:albumId',
              name: 'album',
              builder: (BuildContext context, GoRouterState state) {
                return AlbumView(
                    albumId: state.pathParameters['albumId'] as String);
              },
            ),
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
