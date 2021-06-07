import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_practice/app/modules/intro/intro_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.instance<String>('Victor'),
    // Bind.instance<int>(25),
    Bind.lazySingleton((i) => Controller(name: 'Victor', age: 25))
      ];
    
      @override
      final List<ModularRoute> routes = [
        ModuleRoute(Modular.initialRoute, module: IntroModule()),
      ];
    
    }
    
    class Controller {
      final String name;
      final int age;

  Controller({required this.name, required this.age});

      printText() {
        print('Victor, age: $age');
      }
}