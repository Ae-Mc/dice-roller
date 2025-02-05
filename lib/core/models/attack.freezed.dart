// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attack _$AttackFromJson(Map<String, dynamic> json) {
  return _Attack.fromJson(json);
}

/// @nodoc
mixin _$Attack {
  String get name => throw _privateConstructorUsedError;
  int get attacksCount => throw _privateConstructorUsedError;
  int get attackProbabilityModifier => throw _privateConstructorUsedError;
  Formula get damageFormula => throw _privateConstructorUsedError;

  /// Serializes this Attack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttackCopyWith<Attack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackCopyWith<$Res> {
  factory $AttackCopyWith(Attack value, $Res Function(Attack) then) =
      _$AttackCopyWithImpl<$Res, Attack>;
  @useResult
  $Res call(
      {String name,
      int attacksCount,
      int attackProbabilityModifier,
      Formula damageFormula});

  $FormulaCopyWith<$Res> get damageFormula;
}

/// @nodoc
class _$AttackCopyWithImpl<$Res, $Val extends Attack>
    implements $AttackCopyWith<$Res> {
  _$AttackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attacksCount = null,
    Object? attackProbabilityModifier = null,
    Object? damageFormula = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attacksCount: null == attacksCount
          ? _value.attacksCount
          : attacksCount // ignore: cast_nullable_to_non_nullable
              as int,
      attackProbabilityModifier: null == attackProbabilityModifier
          ? _value.attackProbabilityModifier
          : attackProbabilityModifier // ignore: cast_nullable_to_non_nullable
              as int,
      damageFormula: null == damageFormula
          ? _value.damageFormula
          : damageFormula // ignore: cast_nullable_to_non_nullable
              as Formula,
    ) as $Val);
  }

  /// Create a copy of Attack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormulaCopyWith<$Res> get damageFormula {
    return $FormulaCopyWith<$Res>(_value.damageFormula, (value) {
      return _then(_value.copyWith(damageFormula: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttackImplCopyWith<$Res> implements $AttackCopyWith<$Res> {
  factory _$$AttackImplCopyWith(
          _$AttackImpl value, $Res Function(_$AttackImpl) then) =
      __$$AttackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int attacksCount,
      int attackProbabilityModifier,
      Formula damageFormula});

  @override
  $FormulaCopyWith<$Res> get damageFormula;
}

/// @nodoc
class __$$AttackImplCopyWithImpl<$Res>
    extends _$AttackCopyWithImpl<$Res, _$AttackImpl>
    implements _$$AttackImplCopyWith<$Res> {
  __$$AttackImplCopyWithImpl(
      _$AttackImpl _value, $Res Function(_$AttackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attacksCount = null,
    Object? attackProbabilityModifier = null,
    Object? damageFormula = null,
  }) {
    return _then(_$AttackImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attacksCount: null == attacksCount
          ? _value.attacksCount
          : attacksCount // ignore: cast_nullable_to_non_nullable
              as int,
      attackProbabilityModifier: null == attackProbabilityModifier
          ? _value.attackProbabilityModifier
          : attackProbabilityModifier // ignore: cast_nullable_to_non_nullable
              as int,
      damageFormula: null == damageFormula
          ? _value.damageFormula
          : damageFormula // ignore: cast_nullable_to_non_nullable
              as Formula,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackImpl implements _Attack {
  const _$AttackImpl(
      {required this.name,
      required this.attacksCount,
      required this.attackProbabilityModifier,
      required this.damageFormula});

  factory _$AttackImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackImplFromJson(json);

  @override
  final String name;
  @override
  final int attacksCount;
  @override
  final int attackProbabilityModifier;
  @override
  final Formula damageFormula;

  @override
  String toString() {
    return 'Attack(name: $name, attacksCount: $attacksCount, attackProbabilityModifier: $attackProbabilityModifier, damageFormula: $damageFormula)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.attacksCount, attacksCount) ||
                other.attacksCount == attacksCount) &&
            (identical(other.attackProbabilityModifier,
                    attackProbabilityModifier) ||
                other.attackProbabilityModifier == attackProbabilityModifier) &&
            (identical(other.damageFormula, damageFormula) ||
                other.damageFormula == damageFormula));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, attacksCount,
      attackProbabilityModifier, damageFormula);

  /// Create a copy of Attack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackImplCopyWith<_$AttackImpl> get copyWith =>
      __$$AttackImplCopyWithImpl<_$AttackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackImplToJson(
      this,
    );
  }
}

abstract class _Attack implements Attack {
  const factory _Attack(
      {required final String name,
      required final int attacksCount,
      required final int attackProbabilityModifier,
      required final Formula damageFormula}) = _$AttackImpl;

  factory _Attack.fromJson(Map<String, dynamic> json) = _$AttackImpl.fromJson;

  @override
  String get name;
  @override
  int get attacksCount;
  @override
  int get attackProbabilityModifier;
  @override
  Formula get damageFormula;

  /// Create a copy of Attack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttackImplCopyWith<_$AttackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
