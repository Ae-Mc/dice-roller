import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/features/home/widgets/damage_dialog.dart';
import 'package:flutter/material.dart';

class AttackTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Атака кинжалами'),
      subtitle: const Text('5d12+5'),
      onTap: () => _showResult(context),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit),
      ),
    );
  }

  void _showResult(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => DamageDialog(),
    );
  }
}
