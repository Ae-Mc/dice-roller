// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'formula.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Formula _$FormulaFromJson(Map<String, dynamic> json) {
  return _Formula.fromJson(json);
}

/// @nodoc
mixin _$Formula {
  int get modifier => throw _privateConstructorUsedError;
  Map<Dice, int> get dices => throw _privateConstructorUsedError;

  /// Serializes this Formula to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Formula
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormulaCopyWith<Formula> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormulaCopyWith<$Res> {
  factory $FormulaCopyWith(Formula value, $Res Function(Formula) then) =
      _$FormulaCopyWithImpl<$Res, Formula>;
  @useResult
  $Res call({int modifier, Map<Dice, int> dices});
}

/// @nodoc
class _$FormulaCopyWithImpl<$Res, $Val extends Formula>
    implements $FormulaCopyWith<$Res> {
  _$FormulaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Formula
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifier = null,
    Object? dices = null,
  }) {
    return _then(_value.copyWith(
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as int,
      dices: null == dices
          ? _value.dices
          : dices // ignore: cast_nullable_to_non_nullable
              as Map<Dice, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormulaImplCopyWith<$Res> implements $FormulaCopyWith<$Res> {
  factory _$$FormulaImplCopyWith(
          _$FormulaImpl value, $Res Function(_$FormulaImpl) then) =
      __$$FormulaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int modifier, Map<Dice, int> dices});
}

/// @nodoc
class __$$FormulaImplCopyWithImpl<$Res>
    extends _$FormulaCopyWithImpl<$Res, _$FormulaImpl>
    implements _$$FormulaImplCopyWith<$Res> {
  __$$FormulaImplCopyWithImpl(
      _$FormulaImpl _value, $Res Function(_$FormulaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Formula
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifier = null,
    Object? dices = null,
  }) {
    return _then(_$FormulaImpl(
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as int,
      dices: null == dices
          ? _value._dices
          : dices // ignore: cast_nullable_to_non_nullable
              as Map<Dice, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormulaImpl extends _Formula {
  const _$FormulaImpl(
      {this.modifier = 0, final Map<Dice, int> dices = const {}})
      : _dices = dices,
        super._();

  factory _$FormulaImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormulaImplFromJson(json);

  @override
  @JsonKey()
  final int modifier;
  final Map<Dice, int> _dices;
  @override
  @JsonKey()
  Map<Dice, int> get dices {
    if (_dices is EqualUnmodifiableMapView) return _dices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dices);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormulaImpl &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            const DeepCollectionEquality().equals(other._dices, _dices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, modifier, const DeepCollectionEquality().hash(_dices));

  /// Create a copy of Formula
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormulaImplCopyWith<_$FormulaImpl> get copyWith =>
      __$$FormulaImplCopyWithImpl<_$FormulaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormulaImplToJson(
      this,
    );
  }
}

abstract class _Formula extends Formula {
  const factory _Formula({final int modifier, final Map<Dice, int> dices}) =
      _$FormulaImpl;
  const _Formula._() : super._();

  factory _Formula.fromJson(Map<String, dynamic> json) = _$FormulaImpl.fromJson;

  @override
  int get modifier;
  @override
  Map<Dice, int> get dices;

  /// Create a copy of Formula
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormulaImplCopyWith<_$FormulaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
