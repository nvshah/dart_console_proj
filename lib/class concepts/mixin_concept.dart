mixin M1{
  int a = 5;
  static int sa = 10;
}

class A with M1{
  static int c = 10;
  void m1(){
    a += 1;
  }

  static void mc1(){
    //a += 1;  // Error static members only
    c += 10; // allowed
  }
}


main() {
  A a = A();
  print(a.a);  // null
}