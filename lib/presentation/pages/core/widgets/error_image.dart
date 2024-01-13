import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../infrastructure/core/util/util.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({super.key, required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    //Error errorAsError = error as Error;
    final logger = getIt<LoggerInstance>().getLogger();
    logger.e(error.toString());
    //logger.e(errorAsError.stackTrace);

    return SizedBox(
      height: MediaQuery.of(context).size.height -
          AppBar.preferredHeightFor(context, const Size.fromHeight(200)),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width * 0.05,
                image: const AssetImage('assets/images/no_internet.png'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Algo salió mal.',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
