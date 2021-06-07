import 'package:modular_practice/app/modules/intro/intro_Page.dart';
import 'package:modular_practice/app/modules/intro/intro_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class IntroModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => 'Victao Intro', export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/intro', child: (_, args) => IntroPage()),
  ];
}
