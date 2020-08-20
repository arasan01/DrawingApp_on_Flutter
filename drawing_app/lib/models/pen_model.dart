import 'package:flutter/widgets.dart';
import 'package:state_notifier/state_notifier.dart';

class PenModel {
  PenModel({
    this.color = const Color(0xff000000),
    this.width = 3,
  });

  final Color color;
  final double width;
}

class PenController extends State
