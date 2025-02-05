// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttackResultsImpl _$$AttackResultsImplFromJson(Map<String, dynamic> json) =>
    _$AttackResultsImpl(
      totalDamage: (json['totalDamage'] as num).toInt(),
      totalAttacks: (json['totalAttacks'] as num).toInt(),
      advantageType:
          $enumDecode(_$AttackAdvantageTypeEnumMap, json['advantageType']),
      attackProbabilityModifier:
          (json['attackProbabilityModifier'] as num).toInt(),
      targetArmorClass: (json['targetArmorClass'] as num).toInt(),
      attackRollsPerAttack: (json['attackRollsPerAttack'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
          .toList(),
      damageRollsPerAttack: (json['damageRollsPerAttack'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
          .toList(),
      damageModifiersPerAttack:
          (json['damageModifiersPerAttack'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$$AttackResultsImplToJson(_$AttackResultsImpl instance) =>
    <String, dynamic>{
      'totalDamage': instance.totalDamage,
      'totalAttacks': instance.totalAttacks,
      'advantageType': _$AttackAdvantageTypeEnumMap[instance.advantageType]!,
      'attackProbabilityModifier': instance.attackProbabilityModifier,
      'targetArmorClass': instance.targetArmorClass,
      'attackRollsPerAttack': instance.attackRollsPerAttack,
      'damageRollsPerAttack': instance.damageRollsPerAttack,
      'damageModifiersPerAttack': instance.damageModifiersPerAttack,
    };

const _$AttackAdvantageTypeEnumMap = {
  AttackAdvantageType.normal: 'normal',
  AttackAdvantageType.advantage: 'advantage',
  AttackAdvantageType.disadvantage: 'disadvantage',
};
