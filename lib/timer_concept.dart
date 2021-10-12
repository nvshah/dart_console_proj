import 'dart:async';

class CountDown {
  Timer _cntDownTimer;

  CountDown._();

  static var i = CountDown._();

  ///CountDown that start stopwatch till endTime i.e given in seconds
  void startCountDown({int endTimeInSec, void Function() onEnd}) {
    if (endTimeInSec == null) return;
    final currentTime_ms = DateTime.now().millisecondsSinceEpoch;
    final currentTime_s = (currentTime_ms / 1000).round();
    if (endTimeInSec > currentTime_s) {
      dispose();
      print('Started at >> ${DateTime.now()}');
      _cntDownTimer =
          Timer(Duration(seconds: endTimeInSec - currentTime_s), () {
        onEnd?.call();
        dispose();
        print('Ended at << ${DateTime.now()}');
      });
    }
  }

  void dispose() => _cntDownTimer?.cancel();
}

void main(List<String> args) {
  //print('started -----');
  //Passing Local TimeStamp i.e `endTimeInSec`
  CountDown.i.startCountDown(
      endTimeInSec: 1624261800, onEnd: () => print('Ended on 1:19'));
  //print('Ended -----');
}
