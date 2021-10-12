class A{
  int a = 5;
  static int sa = 10;
}

class B extends A{
  int b = 25;
  static int sb = 30;
  static void m1(){
    //sa = 20;   // Incorrect - need to use full modifier
    // A.sa = 20;  // now this is correct
    sb = 35;   // it's ok as it's declared in enclosing scope
  }
}