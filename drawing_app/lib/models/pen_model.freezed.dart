// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PenTearOff {
  const _$PenTearOff();

// ignore: unused_element
  _Pen call({Color color = const Color(4278190080), double width = 3}) {
    return _Pen(
      color: color,
      width: width,
    );
  }
}

// ignore: unused_element
const $Pen = _$PenTearOff();

mixin _$Pen {
  Color get color;
  double get width;

  $PenCopyWith<Pen> get copyWith;
}

abstract class $PenCopyWith<$Res> {
  factory $PenCopyWith(Pen value, $Res Function(Pen) then) =
      _$PenCopyWithImpl<$Res>;
  $Res call({Color color, double width});
}

class _$PenCopyWithImpl<$Res> implements $PenCopyWith<$Res> {
  _$PenCopyWithImpl(this._value, this._then);

  final Pen _value;
  // ignore: unused_field
  final $Res Function(Pen) _then;

  @override
  $Res call({
    Object color = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed ? _value.color : color as Color,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

abstract class _$PenCopyWith<$Res> implements $PenCopyWith<$Res> {
  factory _$PenCopyWith(_Pen value, $Res Function(_Pen) then) =
      __$PenCopyWithImpl<$Res>;
  @override
  $Res call({Color color, double width});
}

class __$PenCopyWithImpl<$Res> extends _$PenCopyWithImpl<$Res>
    implements _$PenCopyWith<$Res> {
  __$PenCopyWithImpl(_Pen _value, $Res Function(_Pen) _then)
      : super(_value, (v) => _then(v as _Pen));

  @override
  _Pen get _value => super._value as _Pen;

  @override
  $Res call({
    Object color = freezed,
    Object width = freezed,
  }) {
    return _then(_Pen(
      color: color == freezed ? _value.color : color as Color,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

class _$_Pen with DiagnosticableTreeMixin implements _Pen {
  const _$_Pen({this.color = const Color(4278190080), this.width = 3})
      : assert(color != null),
        assert(width != null);

  @JsonKey(defaultValue: const Color(4278190080))
  @override
  final Color color;
  @JsonKey(defaultValue: 3)
  @override
  final double width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pen(color: $color, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pen'))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pen &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(width);

  @override
  _$PenCopyWith<_Pen> get copyWith =>
      __$PenCopyWithImpl<_Pen>(this, _$identity);
}

abstract class _Pen implements Pen {
  const factory _Pen({Color color, double width}) = _$_Pen;

  @override
  Color get color;
  @override
  double get width;
  @override
  _$PenCopyWith<_Pen> get copyWith;
}
