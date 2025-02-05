import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/core/models/attack_advantage_type.dart';
import 'package:dice_roller/core/models/attack_results.dart';
import 'package:flutter/material.dart';

class DamageDialog extends StatelessWidget {
  final AttackResults attackResults;
  const DamageDialog({super.key, required this.attackResults});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final minDimension = constraints.biggest.shortestSide * 0.6;

        return Center(
          child: SizedBox.square(
            dimension: minDimension,
            child: Card(
              child: Center(
                child: ListView(
                  padding: const Pad(all: 16),
                  shrinkWrap: true,
                  children: [
                    Text(
                      attackResults.totalDamage.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(fontSize: 120),
                      textAlign: TextAlign.center,
                    ),
                    for (final rolls in attackResults.attackRollsPerAttack)
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Попадание('),
                            TextSpan(text: rolls.join(', ')),
                            TextSpan(text: ')'),
                            TextSpan(
                              text:
                                  '+${attackResults.attackProbabilityModifier}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "="),
                            TextSpan(
                              text: "${rollResult(rolls)}",
                              style:
                                  isCriticalHit(rolls) || isCriticalFail(rolls)
                                      ? TextStyle(fontWeight: FontWeight.bold)
                                      : null,
                            ),
                            TextSpan(
                              text: "/${attackResults.targetArmorClass}",
                            ),
                            TextSpan(
                              text: (rollResult(rolls) >=
                                              attackResults.targetArmorClass ||
                                          isCriticalHit(rolls)) &&
                                      !isCriticalFail(rolls)
                                  ? ' да'
                                  : ' нет',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    Text.rich(
                      TextSpan(
                        children: [
                          ...List.generate(
                              attackResults.damageRollsPerAttack.length,
                              (index) => index).map(
                            (i) => TextSpan(
                              children: [
                                TextSpan(
                                    text: attackResults.damageRollsPerAttack[i]
                                        .join('+')),
                                TextSpan(
                                  text:
                                      '+${attackResults.damageModifiersPerAttack[i]}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      '=${attackResults.damageRollsPerAttack[i].reduce((value, element) => value + element) + attackResults.damageModifiersPerAttack[i]}',
                                ),
                                if (i !=
                                    attackResults.damageRollsPerAttack.length -
                                        1)
                                  TextSpan(
                                    text: '\n',
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  int actualRoll(List<int> rolls) {
    switch (attackResults.advantageType) {
      case AttackAdvantageType.normal:
        return rolls[0];
      case AttackAdvantageType.advantage:
        return max(rolls[0], rolls[1]);
      case AttackAdvantageType.disadvantage:
        return min(rolls[0], rolls[1]);
    }
  }

  int rollResult(List<int> rolls) {
    int result = actualRoll(rolls);
    if ([1, 20].contains(result)) {
      return result;
    }
    return result + attackResults.attackProbabilityModifier;
  }

  bool isCriticalHit(List<int> rolls) => actualRoll(rolls) == 20;

  bool isCriticalFail(List<int> rolls) => actualRoll(rolls) == 1;
}
