import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/core/models/attack_advantage_type.dart';
import 'package:dice_roller/core/providers/advantage_type.dart';
import 'package:dice_roller/core/providers/armor_class.dart';
import 'package:dice_roller/core/providers/attacks_count.dart';
import 'package:dice_roller/core/providers/attacks_list.dart';
import 'package:dice_roller/core/util/default_zero_input_formatter.dart';
import 'package:dice_roller/features/add_attack/pages/add_attack_page.dart';
import 'package:dice_roller/features/home/widgets/attack_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final armorClassController = TextEditingController();
  final attacksCountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    armorClassController.text = ref.read(armorClassProvider).toString();
    attacksCountController.text = ref.read(attacksCountProvider).toString();
    armorClassController.addListener(() {
      final armorClass = int.tryParse(armorClassController.text);
      ref.read(armorClassProvider.notifier).set(armorClass ?? 0);
    });
    attacksCountController.addListener(() {
      final attacksCount = int.tryParse(attacksCountController.text);
      ref.read(attacksCountProvider.notifier).set(attacksCount ?? 1);
    });
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
                .push(MaterialPageRoute(builder: (context) => AddAttackPage()));
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
                Consumer(
                  builder: (context, ref, child) {
                    final attacksProvider = ref.watch(attacksListProvider);
                    if (attacksProvider.isLoading) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (attacksProvider.hasError) {
                      return Center(
                        child: Text('Ошибка: ${attacksProvider.error}'),
                      );
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Выбор атаки',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        if (attacksProvider.requireValue.isEmpty)
                          Center(
                            child: Text('Пока нет сохранённых атак...'),
                          ),
                        ...attacksProvider.requireValue.map(
                          (e) => AttackTile(attack: e),
                        ),
                      ],
                    );
                  },
                ),
                ListTile(
                  title: Row(
                    children: [
                      const Text('Класс доспеха противника'),
                      const Spacer(),
                      SizedBox(
                        width: 32,
                        child: TextField(
                          controller: armorClassController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(2),
                            DefaultZeroInputFormatter(),
                          ],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      const Text('Количество атак'),
                      const Spacer(),
                      SizedBox(
                        width: 32,
                        child: TextField(
                          controller: attacksCountController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(2),
                            DefaultZeroInputFormatter(),
                          ],
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  title: const Text('Преимущество'),
                  value: ref.watch(advantageTypeProvider) ==
                      AttackAdvantageType.advantage,
                  onChanged: (value) => setState(() {
                    ref.read(advantageTypeProvider.notifier).set(
                          value!
                              ? AttackAdvantageType.advantage
                              : AttackAdvantageType.normal,
                        );
                  }),
                ),
                CheckboxListTile(
                  title: const Text('Помеха'),
                  value: ref.watch(advantageTypeProvider) ==
                      AttackAdvantageType.disadvantage,
                  onChanged: (value) => setState(() {
                    ref.read(advantageTypeProvider.notifier).set(
                          value!
                              ? AttackAdvantageType.disadvantage
                              : AttackAdvantageType.normal,
                        );
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
