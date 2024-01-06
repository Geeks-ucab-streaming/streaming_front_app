import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../infrastructure/core/util/util.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.error});

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

    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Algo salió mal.',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
