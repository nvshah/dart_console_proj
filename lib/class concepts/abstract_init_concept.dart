/**
 * Abstract class can be instantiated Indirectly
 */

abstract class A {
  int f1_A;

  void m1_A();
  //though class is abstract, constructor is allowed
  //
  A(this.f1_A) {
    print('A\'s named constructor is called f1_A = $f1_A');
  }

  factory A.factory() {
    return C2(10);
  }
}

class C1 extends A {
  //1. Accessing the class A instance via super() call
  C1(int i) : super(i);

  @override
  void m1_A() {
    print('Class C1 -> calling method m1_A()');
  }
}

class C2 extends A {
  C2(int b) : super(b);
  @override
  void m1_A() {
    print('Class C2 -> calling method m1_A()');
  }
}

void main() {
  A c1 = C1(5);
  A c2 = C2(6);

  c1.m1_A();
  c2.m1_A();
}
