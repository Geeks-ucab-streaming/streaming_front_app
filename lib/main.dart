import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:streaming_front_app/domain/auth/enums/enums.dart';

import 'application/auth/use_cases/use_cases.dart';
import 'application/core/routes/app_router.dart';
import 'infrastructure/core/services/services.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // configure getIt
  configureDependencies();
  // firebase config
  // getIt instance
  GetIt getIt = GetIt.I;
  // local variables
  FireBaseAPI fireBaseAPI = getIt<FireBaseAPI>();
  await fireBaseAPI.apiInitialization();
  // run app
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  void tryLoginFromLocal(
      {required WidgetRef ref, required LoginStateEnum authState}) async {
    if (authState == LoginStateEnum.unChange) {
      ref.read(loginHelperProvider.notifier).loginFromLocalSession();
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final authState = ref.read(loginHelperProvider);
    // try to login from local
    tryLoginFromLocal(ref: ref, authState: authState);

    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
