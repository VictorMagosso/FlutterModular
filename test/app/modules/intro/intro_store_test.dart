import 'package:flutter_test/flutter_test.dart';
import 'package:modular_practice/app/modules/intro/intro_store.dart';
 
void main() {
  late IntroStore store;

  setUpAll(() {
    store = IntroStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}