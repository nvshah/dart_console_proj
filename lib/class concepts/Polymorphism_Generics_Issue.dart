class Parent{
  int p =10;
}

class Child1 extends Parent{
}

class Child11 extends Child1{

}

void main() {
  //Error Case 1  - Sound Type Safe
  List l = <int>[1,2,3];
  print(l.runtimeType);  //List<int>
  l.add(2.0);  //'double' is not a subtype of type 'int' of 'value'

  //Error Case 2  - Sound Type Safe
  List<num> l2 = <int>[1,2,3];
  print(l.runtimeType);  //List<int>
  l.add(2.0);  //'double' is not a subtype of type 'int' of 'value'

  Parent p = Child11();
  p = Child1();   //valid as Parent can hold reference to any child object

  //Que Why <int> onr RHS is allowed to be assigned to LHS at Compile time ???
  List<Object> l3 = <int>[1,2,4];
  l3.add(Object()); // run time error

  //Valid As num can hold both integer and float/double
  num n = 12;
  n = 12.0;
  print(n);
}