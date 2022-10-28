import 'package:arq/core/inject/inject.dart';
import 'package:arq/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

main() {
  // Prepara as injeções no início da aplicação
  Inject.init();

  runApp(
    MaterialApp(
      home: CarroPage(),
    ),
  );
}
