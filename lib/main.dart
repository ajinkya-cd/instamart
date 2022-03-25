import 'package:flutter/material.dart';
import 'package:instamart/injector_config.dart';
import 'presentation/products_list/products_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initInjector();
  InjectorConfig.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const ProductsListPage(),
    );
  }
}
