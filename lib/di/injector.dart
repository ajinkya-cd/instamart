import 'package:kiwi/kiwi.dart';

abstract class KiwiInjector {
  static KiwiContainer container = KiwiContainer();
  static final resolve = container.resolve;
}