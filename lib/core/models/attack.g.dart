// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttackImpl _$$AttackImplFromJson(Map<String, dynamic> json) => _$AttackImpl(
      name: json['name'] as String,
      attacksCount: (json['attacksCount'] as num).toInt(),
      attackProbabilityModifier:
          (json['attackProbabilityModifier'] as num).toInt(),
      damageFormula:
          Formula.fromJson(json['damageFormula'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttackImplToJson(_$AttackImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attacksCount': instance.attacksCount,
      'attackProbabilityModifier': instance.attackProbabilityModifier,
      'damageFormula': instance.damageFormula,
    };
