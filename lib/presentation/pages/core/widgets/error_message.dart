import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../infrastructure/core/util/util.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.error, required this.message});

  final Object error;
  final String message;

  @override
  Widget build(BuildContext context) {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    //Error errorAsError = error as Error;
    final logger = getIt<LoggerInstance>().getLogger();
    logger.e(error.toString());
    //logger.e(errorAsError.stackTrace);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 100,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            message,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
