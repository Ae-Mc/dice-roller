import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/features/add_atack/pages/add_atack_page.dart';
import 'package:dice_roller/features/home/widgets/attack_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.help_outline),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddAtackPage()));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        reverse: true,
        padding: const Pad(all: 16),
        children: [
          const SizedBox(height: 64),
          AttackTile(),
          Text(
            'Выбор атаки',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const ListTile(
            title: Text('Класс доспеха противника'),
            subtitle: Text('15'),
          ),
          CheckboxListTile(
            title: const Text('Преимущество'),
            value: false,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            title: const Text('Помеха'),
            value: false,
            onChanged: (value) {},
          ),
          Text(
            'Условия атаки',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
