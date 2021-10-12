abstract class A {
  int f1_a = 5;

  void m1_a() => print('class A -> field 1 from method 1 :- $f1_a');

  void m2_a();

  String get p1_a;
}

class AA {
  int f1_aa;

  void m1_aa() => print('Class AA -> field 1 from method 1 :- $f1_aa');
}

class B extends A {
  int f1_a = 10;
  int b1_a = 15;
  void m1_a() {
    print('class B -> m1_a()');
    super.m1_a();
  }

  @override
  void m2_a() {
    print('class B -> m2_a()');
  }

  @override
  String get p1_a => "Getter p1_a from B";
}

class C extends A implements B {
  int f1_a = 20;
  int c1_a = 30;

  void m1_a() {
    print('class C -> m1_a()');
    super.m1_a();
  }

  @override
  void m2_a() {
    print('class C -> m2_a()');
  }

  @override
  int b1_a = 99;

  @override
  String get p1_a => "Getter p1_a from C";
}

void main() {
  A c = C();
  c.m1_a(); //from C
  c.m2_a(); //from C
  print(c.f1_a); //20
  print(c.p1_a);

  B b = B();
  print(b.b1_a); //15
  print(b.f1_a); //10
  b.m1_a(); //from B
  b.m2_a(); //from B
  print(b.p1_a);
}
