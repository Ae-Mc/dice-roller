import 'package:dice_roller/core/models/attack_advantage_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attack_results.freezed.dart';
part 'attack_results.g.dart';

@unfreezed
class AttackResults with _$AttackResults {
  factory AttackResults({
    required int totalDamage,
    required int totalAttacks,
    required AttackAdvantageType advantageType,
    required int attackProbabilityModifier,
    required int targetArmorClass,
    required List<List<int>> attackRollsPerAttack,
    required List<List<int>> damageRollsPerAttack,
    required List<int> damageModifiersPerAttack,
  }) = _AttackResults;

  AttackResults._();

  factory AttackResults.fromJson(Map<String, dynamic> json) =>
      _$AttackResultsFromJson(json);
}
