import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pages/multimedia_related/screens/screens.dart';
import '../pages/user_related/screens/screens.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
class AppRouter extends _$AppRouter {
  @override
  GoRouter build() {
    return GoRouter(
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
  }

  void changeRouterBasedOnLogin() {
    state = GoRouter(
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
    );
  }

  void changeRouterBasedOnLogout() {
    state = GoRouter(
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
    );
  }
}
