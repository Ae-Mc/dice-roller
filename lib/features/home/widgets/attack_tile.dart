import 'package:dice_roller/core/models/attack.dart';
import 'package:dice_roller/core/providers/advantage_type.dart';
import 'package:dice_roller/core/providers/armor_class.dart';
import 'package:dice_roller/core/providers/attacks_count.dart';
import 'package:dice_roller/core/providers/attacks_list.dart';
import 'package:dice_roller/core/util/calc_attack.dart';
import 'package:dice_roller/features/home/widgets/damage_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AttackTile extends ConsumerWidget {
  final Attack attack;
  const AttackTile({super.key, required this.attack});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(attack.name),
      subtitle: Text("${attack.attacksCount} x ${attack.damageFormula}"),
      onTap: () => _attack(context, ref),
      trailing: IconButton(
        onPressed: () =>
            ref.read(attacksListProvider.notifier).removeAttack(attack),
        icon: const Icon(Icons.delete_forever),
        color: Theme.of(context).colorScheme.error,
      ),
    );
  }

  void _attack(BuildContext context, WidgetRef ref) {
    final globalAttacksCount = ref.read(attacksCountProvider);
    final armorClass = ref.read(armorClassProvider);
    final advantageType = ref.read(advantageTypeProvider);

    showDialog(
      context: context,
      builder: (context) => DamageDialog(
        attackResults: calcAttack(
          targetArmorClass: armorClass,
          attacksCount: globalAttacksCount,
          advantageType: advantageType,
          attack: attack,
        ),
      ),
    );
  }
}
