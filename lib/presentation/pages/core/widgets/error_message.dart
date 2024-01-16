import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../infrastructure/core/util/util.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.error,
    required this.message,
    this.secondMessage,
  });

  final Object error;
  final String message;
  final String? secondMessage;

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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (secondMessage != null) ...[
              Text(
                secondMessage as String,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
