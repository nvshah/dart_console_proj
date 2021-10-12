///Parent class A
class A{
  int a = 10;
  void m1() => print("A -> m1() $a");

  A(){
    print("A Constructor is called by ${this.runtimeType}");
    this.a = 100;
  }
}

//Q!! Why class with `Object` Name is Allowed to be define
class Object{
  Object(){
    print("Object is Called by ${this.runtimeType}");
  }
}

/**
 * INTERFACE - IMPLEMENTATION
 * NOTE :- Here B class will not call A class Constructor When B class instance is created
 */
class B implements A{
  //super() will make call to Object class i.e present in dart by default & not above declared one
  B():super();

  @override
  int a = 30;

  @override
  void m1() {
    print("B -> m1() $a");
  }

  A(int a){
    this.a = a;
  }
}

/**
 * INHERITANCE
 * NOTE :- Here C class will call A class Constructor When C class instance is created (i.e proxy Object)
 */
class C extends A{
  C();
}

void main() {
  A b = B();
  A c = C();

  b.m1();
  c.m1();

  Object d = Object();
}