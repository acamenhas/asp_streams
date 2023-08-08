import 'package:asp/asp.dart';
import 'package:asp2/src/app_module.dart';
import 'package:asp2/src/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(RxRoot(
    child: ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  ));
}
