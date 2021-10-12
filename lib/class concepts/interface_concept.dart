abstract class Animal{
  void kill();
}

abstract class Human{
  void protect();
  void kill();
}

class Mammals implements Animal, Human {
  void kill(){
    print("Killed by Mammals");
  }

  @override
  void protect() {
    print("protect by mammals");
  }

}

void main(){
  Animal a = Mammals();
  Human h = Mammals();
  a.kill();
  h.kill();
  h.protect();
}

