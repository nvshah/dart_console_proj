import 'package:meta/meta.dart';

class A {
  int a;
  @nonVirtual
  void m1() {
    print("A -> m1()");
  }
}

class CA1 extends A{
  @override
  void m1() {
    super.m1();
    print("CA1 -> m1()");
  }
}

@sealed
class B{
  void m1(){
    print("B -> m1()");
  }
}

class BC1 extends B{
  @override
  void m1() {
    print("BC1 -> m1()");
  }
}

main() {
  A a = CA1();

  a.m1();
}


