class A {
  String f1_a = "f1_a";
  String get p1_a => "p1_a";

  String m1_a() {
    return "A -> m1_a()";
  }
}

abstract class B extends A {
  String f1_b = "f1_b";
  String get p1_a => "p1_b";

  //Here m1_a() will not shadow as m1_a() implementation is arriving from A
  /** 
   * As B needs to implement its own interface 
   * so m1_a() signature's concrete impl is available via shared from A
   */
  @override
  String m1_a();
}

class C extends B {}

void main() {
  B c_b = C();

  print(c_b.p1_a);
  print(c_b.m1_a());

  A c_a = C();

  print(c_a.p1_a);
  print(c_a.m1_a());
}
