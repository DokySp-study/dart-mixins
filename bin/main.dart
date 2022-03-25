// Tutorial by...
// https://resocoder.com/2019/07/21/mixins-in-dart-understand-dart-flutter-fundamentals-tutorial/

// 믹스인이란?
// 클래스 재사용을 위해 다중상속하는 개념을 말함
// A,B ... 를 상속받을 클래스 뒤에 with A, B ... 이런 식으로 작성하면 됨
// 상속받을 Mixin을 정하고 싶을 때, Mixin class 에 on AAA 이런 식으로 작성하면 됨

import 'flying_things.dart';

void main(List<String> arguments) {
  print('Hello world!');
  Mosquito().doMosquitoThing();
  print("\n");
  Swallow().doSwallowThings();
  print("\n");
  Sparrow().peck();
  print("\n");
  BlueJay().peck();
}
