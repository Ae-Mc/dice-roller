import 'dart:math';

import 'package:dice_roller/core/models/attack.dart';
import 'package:dice_roller/core/models/attack_advantage_type.dart';
import 'package:dice_roller/core/models/attack_results.dart';

AttackResults calcAttack({
  required int targetArmorClass,
  required int attacksCount,
  required AttackAdvantageType advantageType,
  required Attack attack,
}) {
  final result = AttackResults(
    totalDamage: 0,
    totalAttacks: attacksCount * attack.attacksCount,
    damageRollsPerAttack: [],
    attackRollsPerAttack: [],
    damageModifiersPerAttack: [],
    advantageType: advantageType,
    attackProbabilityModifier: attack.attackProbabilityModifier,
    targetArmorClass: targetArmorClass,
  );
  final random = Random();
  print(advantageType);

  int roll(int from, int to) {
    return random.nextInt(to - from + 1) + from;
  }

  for (var i = 0; i < result.totalAttacks; i++) {
    final attackRolls = [roll(1, 20), roll(1, 20)];
    late final int attackRoll;
    switch (advantageType) {
      case AttackAdvantageType.normal:
        attackRoll = attackRolls[0];
        attackRolls.removeAt(1);
        break;
      case AttackAdvantageType.advantage:
        attackRoll = max(attackRolls[0], attackRolls[1]);
        break;
      case AttackAdvantageType.disadvantage:
        attackRoll = min(attackRolls[0], attackRolls[1]);
        break;
    }

    if (attackRoll == 20) {
      final damageRoll = attack.damageFormula.maxRoll();
      result.damageRollsPerAttack.add(damageRoll);
      final damage = damageRoll.reduce((value, element) => value + element);
      result.damageModifiersPerAttack.add(attack.damageFormula.modifier);
      result.totalDamage += damage + attack.damageFormula.modifier;
    }

    if (attackRoll != 1 &&
            attackRoll + attack.attackProbabilityModifier >= targetArmorClass ||
        attackRoll == 20) {
      final damageRoll = attack.damageFormula.roll();
      result.damageRollsPerAttack.add(damageRoll);
      final damage = damageRoll.reduce((value, element) => value + element);
      result.damageModifiersPerAttack.add(attack.damageFormula.modifier);
      result.totalDamage += damage + attack.damageFormula.modifier;
    }
    result.attackRollsPerAttack.add(attackRolls);
  }

  return result;
}
