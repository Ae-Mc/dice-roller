import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/features/add_atack/pages/add_atack_page.dart';
import 'package:dice_roller/features/home/widgets/attack_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final armorClassController = TextEditingController(text: "10");
  bool advantage = false;
  bool disadvantage = false;

  @override
  void initState() {
    // armorClassController.addListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Главная'),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.help_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Атаки'),
              Tab(text: 'История'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddAtackPage()));
          },
          child: const Icon(Icons.add),
        ),
        body: TabBarView(
          children: [
            ListView(
              reverse: true,
              padding: const Pad(all: 16),
              children: [
                const SizedBox(height: 64),
                AttackTile(),
                Text(
                  'Выбор атаки',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                ListTile(
                  title: Row(
                    children: [
                      const Text('Класс доспеха противника'),
                      const Spacer(),
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: armorClassController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Преимущество'),
                  value: advantage,
                  onChanged: (value) => setState(() {
                    advantage = value!;
                    if (value) {
                      disadvantage = false;
                    }
                  }),
                ),
                CheckboxListTile(
                  title: const Text('Помеха'),
                  value: disadvantage,
                  onChanged: (value) => setState(() {
                    disadvantage = value!;
                    if (value) {
                      advantage = false;
                    }
                  }),
                ),
                Text(
                  'Условия атаки',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            ListView(
              padding: const Pad(all: 16),
              children: [
                Text(
                  'Скоро...',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
