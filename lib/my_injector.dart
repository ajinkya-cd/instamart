import 'package:kiwi/kiwi.dart';

abstract class MyInjector {
  static KiwiContainer container = KiwiContainer();
  static final resolve = container.resolve;
}