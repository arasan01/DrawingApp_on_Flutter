import 'dart:ui';

import 'package:drawing_app/models/pen_model.dart';
import 'package:drawing_app/models/stroke_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:tuple/tuple.dart';

void main() {
  final container = ProviderContainer();
  final strokeModelProvider = Provider((ref) => StrokeModel());

  final strokeModel = container.read(strokeModelProvider);

  group("Stroke: -", () {
    test('Create a new stroke on riverpod', () {
      final penModel = PenModel();
      final expected = [];
      strokeModel.clear();

      const injector = [
        Tuple2<Pen, Offset>(Pen(color: Colors.brown), Offset.zero),
        Tuple2<Pen, Offset>(Pen(color: Colors.amber), Offset(5, 3)),
        Tuple2<Pen, Offset>(Pen(color: Colors.blue), Offset(10, 6)),
      ];

      for (final t in injector) {
        penModel.pen = t.item1;
        final offset = t.item2;
        expected.add(Stroke(
          penModel.pen,
          points: [offset],
        ));
        strokeModel.newStroke(penModel, offset);
      }

      expect(expected, strokeModel.all);
    });

    test('Extend a stroke on riverpod', () {
      final penModel = PenModel();
      final expected = [];
      strokeModel.clear();

      const injector = [
        Tuple2<Pen, Offset>(Pen(color: Colors.brown), Offset.zero),
        Tuple2<Pen, Offset>(Pen(color: Colors.amber), Offset(5, 3)),
        Tuple2<Pen, Offset>(Pen(color: Colors.blue), Offset(10, 6)),
      ];

      for (final t in injector) {
        penModel.pen = t.item1;
        final offset = t.item2;
        expected.add(Stroke(
          penModel.pen,
          points: [offset, offset, offset],
        ));
        strokeModel.newStroke(penModel, offset);
        strokeModel.extendStroke(offset);
        strokeModel.extendStroke(offset);
      }

      expect(expected, strokeModel.all);
    });
  });
}
