import 'dart:async';

void main() async {
  //emit a 0,1,2,3,... at interval of 1 seconds
  final s = Stream.periodic(const Duration(seconds: 1), (x) => x);
  final s2 = Stream.periodic(const Duration(seconds: 2), (x) => -x);

  s.listen(print);

  final s3 = Stream.fromFutures([Future(() => 3), Future.value(2)]);
  s3.listen(print); //2, 3   (as .value() will be completed first)

  final subscription = CustomStream().stream.listen(print);

  final streamController = StreamController<int>();

  int max = 0;
  //await till I loop throug all the streams value
  await for (final v in streamController.stream) {
    max = v > max ? v : max;
  }

  await streamController.stream.forEach((v) {
    max = v > max ? v : max;
  });

  asyncGenerator().listen(print);
}

var negativeStream =
    Stream<int>.periodic(const Duration(milliseconds: 500), (x) => -x);

///AsyncGenerator will produce a Stream
Stream<int> asyncGenerator() async* {
  for (var i in Iterable.generate(5)) {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield i;
  }
  yield* negativeStream;
}

class CustomStream {
  StreamController authority;
  int val = 0;

  CustomStream() {
    authority = StreamController<int>();
    //authority = StreamController<int>().broadcast();
  }

  void start() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timer == 5) {
        timer.cancel();
        authority.close();
      }
      authority.add(val++);
    });
  }

  Stream<int> get stream {
    start();
    authority.stream;
  }
}
