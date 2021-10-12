main() {
  print('start');

  Future(() => 1).then(print);
  Future(() => Future(() => 2)).then(print);

  Future.delayed(const Duration(seconds: 1), () => 3).then(print);
  Future.delayed(const Duration(seconds: 1), () => Future(() => 4)).then(print);

  // Future.delayed(Duration(seconds: 0)) == Future(() => 1);

  //Immediately but asynchronously
  Future.value(5).then(print);  //when value passed is completed asa passed
  Future.value(Future(() => 6)).then(print);  //? == Future(() => 6)

  //Same as .value(), but instead of value it takes a closure
  Future.sync(() => 7).then(print);  //? == Future.value(7)
  Future.sync(() => Future(() => 8)).then(print);
  
  Future.microtask(() => 9).then(print);
  Future.microtask(() => Future(() => 10)).then(print); //? Future(() => 10) will place on a microtask queue instead of Event Queue

  Future(() => 11).then(print);
  Future(() => Future(() => 12)).then(print);

  print('End');
}

// Output :- Start End 5 7 9 1 6 8 11 10 2 12 3

//Explanation :-

//Order in which dart reads the code line 1 by 1 (from Right to Left) by Isolate
// * Read : End 12 11 10 9 8 7 6 5 4 3 2 1 Start

/**
 * ! MicroTask Queue :
 * ? Event Queue :
 * * Output :
 */
