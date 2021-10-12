mixin M{
  int a = 10;
}

abstract class A{
  void a();
}

class C{
  int _c;
  //only factory constructor can specify redirection using =
  factory C() = C._;
  C._([this._c = 10]);
}