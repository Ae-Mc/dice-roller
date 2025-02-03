import 'package:flutter/material.dart';

class AttackTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Атака кинжалами'),
      subtitle: const Text('5d12+5'),
      onTap: () {},
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
