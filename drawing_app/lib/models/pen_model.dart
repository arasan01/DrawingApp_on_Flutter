import 'package:flutter/widgets.dart';
import 'package:state_notifier/state_notifier.dart';

class Pen {
  Pen({
    this.color = const Color(0xff000000),
    this.width = 3,
  });

  final Color color;
  final double width;
}

class PenModel extends StateNotifier<Pen> {
  PenModel([Pen initialPen]) : super(initialPen ?? Pen());

  Pen get pen => state;
  set pen(Pen newPen) {
    state = newPen;
  }

  void reset() {
    state = Pen();
  }
}
