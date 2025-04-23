import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop_app/models/cart.dart';
import 'package:sneakershop_app/pages/intro_page.dart';

void main() {
  runApp(const SneakerShopApp());
}

class SneakerShopApp extends StatefulWidget {
  const SneakerShopApp({super.key});

  @override
  State<SneakerShopApp> createState() => _SneakerShopAppState();
}

class _SneakerShopAppState extends State<SneakerShopApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: IntroPage(),
            ));
  }
}
