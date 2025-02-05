// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attack_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttackResults _$AttackResultsFromJson(Map<String, dynamic> json) {
  return _AttackResults.fromJson(json);
}

/// @nodoc
mixin _$AttackResults {
  int get totalDamage => throw _privateConstructorUsedError;
  set totalDamage(int value) => throw _privateConstructorUsedError;
  int get totalAttacks => throw _privateConstructorUsedError;
  set totalAttacks(int value) => throw _privateConstructorUsedError;
  AttackAdvantageType get advantageType => throw _privateConstructorUsedError;
  set advantageType(AttackAdvantageType value) =>
      throw _privateConstructorUsedError;
  int get attackProbabilityModifier => throw _privateConstructorUsedError;
  set attackProbabilityModifier(int value) =>
      throw _privateConstructorUsedError;
  int get targetArmorClass => throw _privateConstructorUsedError;
  set targetArmorClass(int value) => throw _privateConstructorUsedError;
  List<List<int>> get attackRollsPerAttack =>
      throw _privateConstructorUsedError;
  set attackRollsPerAttack(List<List<int>> value) =>
      throw _privateConstructorUsedError;
  List<List<int>> get damageRollsPerAttack =>
      throw _privateConstructorUsedError;
  set damageRollsPerAttack(List<List<int>> value) =>
      throw _privateConstructorUsedError;
  List<int> get damageModifiersPerAttack => throw _privateConstructorUsedError;
  set damageModifiersPerAttack(List<int> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this AttackResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttackResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttackResultsCopyWith<AttackResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackResultsCopyWith<$Res> {
  factory $AttackResultsCopyWith(
          AttackResults value, $Res Function(AttackResults) then) =
      _$AttackResultsCopyWithImpl<$Res, AttackResults>;
  @useResult
  $Res call(
      {int totalDamage,
      int totalAttacks,
      AttackAdvantageType advantageType,
      int attackProbabilityModifier,
      int targetArmorClass,
      List<List<int>> attackRollsPerAttack,
      List<List<int>> damageRollsPerAttack,
      List<int> damageModifiersPerAttack});
}

/// @nodoc
class _$AttackResultsCopyWithImpl<$Res, $Val extends AttackResults>
    implements $AttackResultsCopyWith<$Res> {
  _$AttackResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttackResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDamage = null,
    Object? totalAttacks = null,
    Object? advantageType = null,
    Object? attackProbabilityModifier = null,
    Object? targetArmorClass = null,
    Object? attackRollsPerAttack = null,
    Object? damageRollsPerAttack = null,
    Object? damageModifiersPerAttack = null,
  }) {
    return _then(_value.copyWith(
      totalDamage: null == totalDamage
          ? _value.totalDamage
          : totalDamage // ignore: cast_nullable_to_non_nullable
              as int,
      totalAttacks: null == totalAttacks
          ? _value.totalAttacks
          : totalAttacks // ignore: cast_nullable_to_non_nullable
              as int,
      advantageType: null == advantageType
          ? _value.advantageType
          : advantageType // ignore: cast_nullable_to_non_nullable
              as AttackAdvantageType,
      attackProbabilityModifier: null == attackProbabilityModifier
          ? _value.attackProbabilityModifier
          : attackProbabilityModifier // ignore: cast_nullable_to_non_nullable
              as int,
      targetArmorClass: null == targetArmorClass
          ? _value.targetArmorClass
          : targetArmorClass // ignore: cast_nullable_to_non_nullable
              as int,
      attackRollsPerAttack: null == attackRollsPerAttack
          ? _value.attackRollsPerAttack
          : attackRollsPerAttack // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      damageRollsPerAttack: null == damageRollsPerAttack
          ? _value.damageRollsPerAttack
          : damageRollsPerAttack // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      damageModifiersPerAttack: null == damageModifiersPerAttack
          ? _value.damageModifiersPerAttack
          : damageModifiersPerAttack // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackResultsImplCopyWith<$Res>
    implements $AttackResultsCopyWith<$Res> {
  factory _$$AttackResultsImplCopyWith(
          _$AttackResultsImpl value, $Res Function(_$AttackResultsImpl) then) =
      __$$AttackResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalDamage,
      int totalAttacks,
      AttackAdvantageType advantageType,
      int attackProbabilityModifier,
      int targetArmorClass,
      List<List<int>> attackRollsPerAttack,
      List<List<int>> damageRollsPerAttack,
      List<int> damageModifiersPerAttack});
}

/// @nodoc
class __$$AttackResultsImplCopyWithImpl<$Res>
    extends _$AttackResultsCopyWithImpl<$Res, _$AttackResultsImpl>
    implements _$$AttackResultsImplCopyWith<$Res> {
  __$$AttackResultsImplCopyWithImpl(
      _$AttackResultsImpl _value, $Res Function(_$AttackResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttackResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDamage = null,
    Object? totalAttacks = null,
    Object? advantageType = null,
    Object? attackProbabilityModifier = null,
    Object? targetArmorClass = null,
    Object? attackRollsPerAttack = null,
    Object? damageRollsPerAttack = null,
    Object? damageModifiersPerAttack = null,
  }) {
    return _then(_$AttackResultsImpl(
      totalDamage: null == totalDamage
          ? _value.totalDamage
          : totalDamage // ignore: cast_nullable_to_non_nullable
              as int,
      totalAttacks: null == totalAttacks
          ? _value.totalAttacks
          : totalAttacks // ignore: cast_nullable_to_non_nullable
              as int,
      advantageType: null == advantageType
          ? _value.advantageType
          : advantageType // ignore: cast_nullable_to_non_nullable
              as AttackAdvantageType,
      attackProbabilityModifier: null == attackProbabilityModifier
          ? _value.attackProbabilityModifier
          : attackProbabilityModifier // ignore: cast_nullable_to_non_nullable
              as int,
      targetArmorClass: null == targetArmorClass
          ? _value.targetArmorClass
          : targetArmorClass // ignore: cast_nullable_to_non_nullable
              as int,
      attackRollsPerAttack: null == attackRollsPerAttack
          ? _value.attackRollsPerAttack
          : attackRollsPerAttack // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      damageRollsPerAttack: null == damageRollsPerAttack
          ? _value.damageRollsPerAttack
          : damageRollsPerAttack // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      damageModifiersPerAttack: null == damageModifiersPerAttack
          ? _value.damageModifiersPerAttack
          : damageModifiersPerAttack // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackResultsImpl extends _AttackResults {
  _$AttackResultsImpl(
      {required this.totalDamage,
      required this.totalAttacks,
      required this.advantageType,
      required this.attackProbabilityModifier,
      required this.targetArmorClass,
      required this.attackRollsPerAttack,
      required this.damageRollsPerAttack,
      required this.damageModifiersPerAttack})
      : super._();

  factory _$AttackResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackResultsImplFromJson(json);

  @override
  int totalDamage;
  @override
  int totalAttacks;
  @override
  AttackAdvantageType advantageType;
  @override
  int attackProbabilityModifier;
  @override
  int targetArmorClass;
  @override
  List<List<int>> attackRollsPerAttack;
  @override
  List<List<int>> damageRollsPerAttack;
  @override
  List<int> damageModifiersPerAttack;

  @override
  String toString() {
    return 'AttackResults(totalDamage: $totalDamage, totalAttacks: $totalAttacks, advantageType: $advantageType, attackProbabilityModifier: $attackProbabilityModifier, targetArmorClass: $targetArmorClass, attackRollsPerAttack: $attackRollsPerAttack, damageRollsPerAttack: $damageRollsPerAttack, damageModifiersPerAttack: $damageModifiersPerAttack)';
  }

  /// Create a copy of AttackResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackResultsImplCopyWith<_$AttackResultsImpl> get copyWith =>
      __$$AttackResultsImplCopyWithImpl<_$AttackResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackResultsImplToJson(
      this,
    );
  }
}

abstract class _AttackResults extends AttackResults {
  factory _AttackResults(
      {required int totalDamage,
      required int totalAttacks,
      required AttackAdvantageType advantageType,
      required int attackProbabilityModifier,
      required int targetArmorClass,
      required List<List<int>> attackRollsPerAttack,
      required List<List<int>> damageRollsPerAttack,
      required List<int> damageModifiersPerAttack}) = _$AttackResultsImpl;
  _AttackResults._() : super._();

  factory _AttackResults.fromJson(Map<String, dynamic> json) =
      _$AttackResultsImpl.fromJson;

  @override
  int get totalDamage;
  set totalDamage(int value);
  @override
  int get totalAttacks;
  set totalAttacks(int value);
  @override
  AttackAdvantageType get advantageType;
  set advantageType(AttackAdvantageType value);
  @override
  int get attackProbabilityModifier;
  set attackProbabilityModifier(int value);
  @override
  int get targetArmorClass;
  set targetArmorClass(int value);
  @override
  List<List<int>> get attackRollsPerAttack;
  set attackRollsPerAttack(List<List<int>> value);
  @override
  List<List<int>> get damageRollsPerAttack;
  set damageRollsPerAttack(List<List<int>> value);
  @override
  List<int> get damageModifiersPerAttack;
  set damageModifiersPerAttack(List<int> value);

  /// Create a copy of AttackResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttackResultsImplCopyWith<_$AttackResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
