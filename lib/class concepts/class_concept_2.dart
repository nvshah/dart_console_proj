mixin A{
  void m_a() => print('A -> m_a()');
  void m() => print('A -> m()');
  //mixin can have abstract methods
  void am();
}

mixin B on A{
  void m() => print('B -> m()');
  //NOTE HERE B DO NOT REQUIRE TO OVERRIDE am(), as B is mixin
}

class Cat{
  void meow() => print('Cat Meow!!');
  void m_a() => print('Cat -> m_a()');
  void am() => print('Cat -> am()');
}

class Tiger extends Cat with A{
  //NOTE HERE TIGER DO NOT REQUIRE TO OVERRIDE am(), as Tiger is class But CAT Already had impl
  void am() => print('Tiger -> am()');
}

class Other = Cat with A, B;

class Ogy = Tiger with B;

void main(){
  var c = Other();
  var t =Ogy();

  c..am()..m_a()..meow()..m();
  t..am()..m_a()..meow()..m();
}