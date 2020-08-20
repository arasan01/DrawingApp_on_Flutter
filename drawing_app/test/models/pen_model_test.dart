import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';

import 'package:drawing_app/models/pen_model.dart';

void main() {
  final container = ProviderContainer();
  final penModelProvider = Provider((ref) => PenModel());

  final penModel = container.read(penModelProvider);
  group("Pen: -", () {
    test('Set and Get Pen on riverpod', () {
      final expected = Pen(color: const Color(0xff00ff00), width: 5);
      penModel.pen = expected;
      final actual = penModel.pen;
      expect(expected, actual);
    });

    test('Reset Pen on riverpod', () {
      final expected = Pen();
      penModel.reset();
      final actual = penModel.pen;
      expect(expected, actual);
    });
  });
}
