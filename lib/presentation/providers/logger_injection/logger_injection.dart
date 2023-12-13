import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger_injection.g.dart';

@riverpod
Logger loggerInjection(LoggerInjectionRef ref) {
  final Logger logger = Logger();

  return logger;
}
