import 'package:meta/meta.dart';

class Animal {
  final String name;
  Animal({@required this.name});
  void whoAmI() => print("I am animal $name");

  void chase(Animal a) {
    print('Chasing Animal ${a.name}');
  }
}

//? Bird extends Animal & Animal extends Object so Bird extends Object too.
class Bird extends Animal {
  //We can call Abstract class Constructor using super() but we cannot instantiate it using Animal() directly
  Bird(String name) : super(name: name);

  //Polymorphism - Overloading
  @override
  void whoAmI() {
    print("I am Bird $name");
  }

  //Abstraction behaviour inside Non-Abstract Class
  external void flyMe();
}

class Duck extends Bird {
  Duck(String name) : super(name);

  @override
  void whoAmI() {
    print("I am Duck $name");
  }

  void quack() => print("quack.......");

  //tighten the type from Parent -> Child
  @override
  void chase(covariant Bird b) {
    print('chasing Bird ${b.name}');
  }

  @override
  void flyMe() {
    print('Flying Duck $name');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name: name);

  //Polymorphism - 1 Overriding
  @override
  void whoAmI() {
    print("I am Cat $name");
  }

  @override
  void chase([covariant Cat c]) {
    print('Chasing the Cat ${c?.name ?? 'None'}');
  }
}

void main() {
  Animal a = Animal(name: "Lion Simba");

  Bird b = Duck("duck3");

  Animal d = Duck("Donald");
  Animal c = Cat("Tom");

  b.whoAmI();

  b.chase(Bird("bird3"));

  //Overloading example
  d.chase(Bird('parrot'));
  //d.chase(c);  //Error

  d.whoAmI();

  c.chase(Cat('Micky'));
  //c.chase(d);

  Bird b2 = Bird('birdAny');
  //b2.flyMe();  //Run Time Error
}
