// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formula.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormulaImpl _$$FormulaImplFromJson(Map<String, dynamic> json) =>
    _$FormulaImpl(
      modifier: (json['modifier'] as num?)?.toInt() ?? 0,
      dices: (json['dices'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry($enumDecode(_$DiceEnumMap, k), (e as num).toInt()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$FormulaImplToJson(_$FormulaImpl instance) =>
    <String, dynamic>{
      'modifier': instance.modifier,
      'dices': instance.dices.map((k, e) => MapEntry(_$DiceEnumMap[k]!, e)),
    };

const _$DiceEnumMap = {
  Dice.d3: 'd3',
  Dice.d4: 'd4',
  Dice.d6: 'd6',
  Dice.d8: 'd8',
  Dice.d10: 'd10',
  Dice.d12: 'd12',
  Dice.d20: 'd20',
  Dice.d100: 'd100',
};
