import 'package:dice_roller/core/models/formula.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'attack.freezed.dart';
part 'attack.g.dart';

@freezed
class Attack with _$Attack {
  const factory Attack({
    required String name,
    required int attacksCount,
    required int attackProbabilityModifier,
    required Formula damageFormula,
  }) = _Attack;

  factory Attack.fromJson(Map<String, dynamic> json) => _$AttackFromJson(json);
}
