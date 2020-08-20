import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:drawing_app/models/pen_model.dart';

part 'stroke_model.freezed.dart';

@freezed
abstract class Stroke with _$Stroke {
  const factory Stroke(Pen pen, {@Default([]) List<Offset> points}) = _Stroke;
}

class StrokeModel extends StateNotifier<List<Stroke>> {
  StrokeModel([List<Stroke> initialStrokes]) : super(initialStrokes ?? []);

  List<Stroke> get all => state;

  void newStroke(PenModel penModel, Offset offset) {
    state = [
      ...state,
      Stroke(penModel.pen, points: [offset]),
    ];
  }

  void extendStroke(Offset offset) {
    state.last = state.last.copyWith(points: [
      ...state.last.points,
      offset,
    ]);
  }

  void clear() {
    state = [];
  }
}
