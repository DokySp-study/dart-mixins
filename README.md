# Dart Mixin

### 믹스인이란?

- 클래스 재사용을 위해 다중상속하는 개념을 말함

  ```dart
  mixin Hyundai {
    static final int CODE = 235232;
    static final String name = "Hyundai Motors"
    //...
  }
  ```

- `A,B ...` 를 상속받을 클래스 뒤에 `with A, B ...` 이런 식으로 작성하면 됨

  ```dart
  class Avante with Sedan, Bsegment, Hyundai {}
  ```

- Mixin에서 상속받기 위해 `on AAA` 이런 식으로 작성하면 됨.
- `on` 뒤에는 `class`, `mixin` 둘 다 올 수 있음.
  ```dart
  mixin Sedan on Car {}
  ```
