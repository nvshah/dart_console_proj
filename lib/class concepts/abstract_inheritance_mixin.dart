mixin M1 {
  void cm() {
    print('Mixin M1 -> cm()');
  }
}
mixin M2 {
  void cm() {
    print('Mixin M2 -> cm()');
  }
}
mixin M3 on B {
  //Only Signature
  void cm();
}
mixin M4 on B {
  //Only Signature
  void cm() {
    super.cm();
  }
}

class A {
  void cm() {
    print('Class A -> cm()');
  }
}

abstract class B {
  void cm();
}

class C extends B with M1, M2, M3 {}

class D with M2, M1 implements A {}

/**
 * Fails as before M4 there is no concrete impl in E, B or M3 or M4
 *  */
//! class E extends B with M3, M4, M2 {}

class F extends B with M1, M3, M4, M2 implements A {}

void main() {
  B c = C();
  c.cm();

  A d = D();
  d.cm();

  A f = F();
  f.cm();
}
