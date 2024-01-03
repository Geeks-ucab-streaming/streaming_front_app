import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../infrastructure/core/util/util.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({super.key, required this.error});

  final Error error;

  @override
  Widget build(BuildContext context) {
    const BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.transparent,
    );

    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    logger.e(error.toString());
    logger.e(error.stackTrace);

    return Container(
      decoration: boxDecoration,
      height: MediaQuery.of(context).size.height -
          AppBar.preferredHeightFor(context, const Size.fromHeight(200)),
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Image(
          image: AssetImage('assets/images/no_connection.png'),
        ),
      ),
    );
  }
}
