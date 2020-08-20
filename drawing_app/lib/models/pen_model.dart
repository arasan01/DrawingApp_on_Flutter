import 'package:flutter/widgets.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pen_model.freezed.dart';

@freezed
abstract class Pen with _$Pen {
  const factory Pen(
      {@Default(Color(0xff000000)) Color color,
      @Default(3) double width}) = _Pen;
}

class PenModel extends StateNotifier<Pen> {
  PenModel([Pen initialPen]) : super(initialPen ?? const Pen());

  Pen get pen => state;
  set pen(Pen newPen) {
    state = newPen;
  }

  void reset() {
    state = const Pen();
  }
}
