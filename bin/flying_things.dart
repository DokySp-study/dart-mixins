mixin Fluttering {
  void flutter() {
    print("Mixin fluttering");
  }
}

// mixin Fluttering2 {
//   void flutter() {
//     print("Mixin fluttering");
//   }
// }

abstract class Insect {
  void crawl() {
    print('crawling');
  }
}

// Fluttering 으로 캐스팅되지 않음!
// 여러 개 Mixins 할 수 있음 (ex> with Fluttering, Fluttering2 )
abstract class AirborneInsect extends Insect with Fluttering {
  void flutter() {
    print('fluttering');
  }

  void buzz() {
    print('buzzing annoyingly');
  }
}

class Mosquito extends AirborneInsect {
  void doMosquitoThing() {
    crawl();
    flutter();
    buzz();
    print('sucking blood');
  }
}

// cf> Multiple Inheritance

// 이러면 새에만 사용할 수 있는 믹스인이 만들어짐!
mixin Pecking on Bird {
  void peck() {
    print("peck");
    chirp();
  }
}

abstract class Bird with Fluttering {
  void chirp() {
    print("chirp chirp");
  }

  void flutter() {
    print("flutter flutter");
  }
}

class Swallow extends Bird {
  void doSwallowThings() {
    chirp();
    flutter();
    print("Eat something");
  }
}

class Sparrow extends Bird with Pecking {}

class BlueJay extends Bird with Pecking {}
