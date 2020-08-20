// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stroke_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StrokeTearOff {
  const _$StrokeTearOff();

// ignore: unused_element
  _Stroke call(Pen pen, {List<Offset> points = const []}) {
    return _Stroke(
      pen,
      points: points,
    );
  }
}

// ignore: unused_element
const $Stroke = _$StrokeTearOff();

mixin _$Stroke {
  Pen get pen;
  List<Offset> get points;

  $StrokeCopyWith<Stroke> get copyWith;
}

abstract class $StrokeCopyWith<$Res> {
  factory $StrokeCopyWith(Stroke value, $Res Function(Stroke) then) =
      _$StrokeCopyWithImpl<$Res>;
  $Res call({Pen pen, List<Offset> points});

  $PenCopyWith<$Res> get pen;
}

class _$StrokeCopyWithImpl<$Res> implements $StrokeCopyWith<$Res> {
  _$StrokeCopyWithImpl(this._value, this._then);

  final Stroke _value;
  // ignore: unused_field
  final $Res Function(Stroke) _then;

  @override
  $Res call({
    Object pen = freezed,
    Object points = freezed,
  }) {
    return _then(_value.copyWith(
      pen: pen == freezed ? _value.pen : pen as Pen,
      points: points == freezed ? _value.points : points as List<Offset>,
    ));
  }

  @override
  $PenCopyWith<$Res> get pen {
    if (_value.pen == null) {
      return null;
    }
    return $PenCopyWith<$Res>(_value.pen, (value) {
      return _then(_value.copyWith(pen: value));
    });
  }
}

abstract class _$StrokeCopyWith<$Res> implements $StrokeCopyWith<$Res> {
  factory _$StrokeCopyWith(_Stroke value, $Res Function(_Stroke) then) =
      __$StrokeCopyWithImpl<$Res>;
  @override
  $Res call({Pen pen, List<Offset> points});

  @override
  $PenCopyWith<$Res> get pen;
}

class __$StrokeCopyWithImpl<$Res> extends _$StrokeCopyWithImpl<$Res>
    implements _$StrokeCopyWith<$Res> {
  __$StrokeCopyWithImpl(_Stroke _value, $Res Function(_Stroke) _then)
      : super(_value, (v) => _then(v as _Stroke));

  @override
  _Stroke get _value => super._value as _Stroke;

  @override
  $Res call({
    Object pen = freezed,
    Object points = freezed,
  }) {
    return _then(_Stroke(
      pen == freezed ? _value.pen : pen as Pen,
      points: points == freezed ? _value.points : points as List<Offset>,
    ));
  }
}

class _$_Stroke with DiagnosticableTreeMixin implements _Stroke {
  const _$_Stroke(this.pen, {this.points = const []})
      : assert(pen != null),
        assert(points != null);

  @override
  final Pen pen;
  @JsonKey(defaultValue: const [])
  @override
  final List<Offset> points;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stroke(pen: $pen, points: $points)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stroke'))
      ..add(DiagnosticsProperty('pen', pen))
      ..add(DiagnosticsProperty('points', points));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stroke &&
            (identical(other.pen, pen) ||
                const DeepCollectionEquality().equals(other.pen, pen)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pen) ^
      const DeepCollectionEquality().hash(points);

  @override
  _$StrokeCopyWith<_Stroke> get copyWith =>
      __$StrokeCopyWithImpl<_Stroke>(this, _$identity);
}

abstract class _Stroke implements Stroke {
  const factory _Stroke(Pen pen, {List<Offset> points}) = _$_Stroke;

  @override
  Pen get pen;
  @override
  List<Offset> get points;
  @override
  _$StrokeCopyWith<_Stroke> get copyWith;
}
