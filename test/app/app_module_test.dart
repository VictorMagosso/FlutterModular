import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_practice/app/app_module.dart';
import 'package:modular_practice/app/modules/home/home_module.dart';
import 'package:modular_practice/app/modules/intro/intro_module.dart';
void main() {
  initModules([
    AppModule(), 
    IntroModule(),
    HomeModule(),
  ]);

  test('Get Controller', (){
    final controller = Modular.get<Controller>();
    controller.printText();
  });
}