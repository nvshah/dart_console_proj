class A {
  void cm() => print('A -> cm()');
  void m_a() => print('A -> m_a()');
}

class B extends A {
  void cm() => print('B -> cm()');
  void m_b() => print('B -> m_b()');
}

class C extends A {
  void cm() => print('C -> cm()');
  void m_c() => print('C -> m_c()');
}

class D extends B {
  void cm() => print('D -> cm()');
  void m_d() => print('D -> m_d()');
}

void main() {
  A d = D();
  B b = B();

  d.cm(); //D
  b.cm(); //B
  b = d;
  b.cm(); //D

  //A a1 = C();
  //D b1 = a1 as D;  //type 'C' is not a subtype of type 'D' in type cast

  B b2 = B();
  A a2 = b2;

  a2.m_a();
  a2.cm();   //B -> cm()
}