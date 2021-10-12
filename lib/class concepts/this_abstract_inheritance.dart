
abstract class A{
  int a = 20;

  A(){
    //here `this` is referring to the subClass Object but Note that A class constructor can be called from subclasses
    print("From A $this, ${this.hashCode}");
  }
  void f1();
  void f2(){
    this.f1();
  }
}

class B extends A{
  B(){
    print("From B $this, ${this.hashCode}");
  }
  @override
  void f1() {
    print("From B -> f1()");
  }
}

abstract class Animal{
  String name = 'animal';
  String get Name;
  set Name(String val);
}

class Mammal extends Animal{
  @override
  String _name;

  @override
  String get Name => "$_name";

  @override
  set Name(String val) {
    _name = val;
  }}

void main() {
  A o1 = B();
  B o2 = o1;

  print(o1.hashCode);
  print(o2.hashCode);

  A o3 = B();
  print(o3.hashCode);

  Animal animal = Mammal();
  animal.Name = "Simba";
  print(animal.Name);
  print(animal.name);
}