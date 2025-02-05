import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/core/models/attack.dart';
import 'package:dice_roller/core/models/dice.dart';
import 'package:dice_roller/core/models/formula.dart';
import 'package:dice_roller/core/providers/attacks_list.dart';
import 'package:dice_roller/core/util/default_zero_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddAttackPage extends StatefulWidget {
  const AddAttackPage({super.key});

  @override
  State<AddAttackPage> createState() => _AddAttackPageState();
}

class _AddAttackPageState extends State<AddAttackPage> {
  final nameController = TextEditingController();
  final attacksCountController = TextEditingController();
  final attackProbabilityModifierController = TextEditingController();
  final formulaController = TextEditingController();
  final damageModifierController = TextEditingController();
  final diceCountController = TextEditingController();
  bool expertMode = false;
  List<Dice> dices = [];
  int diceCount = 0;

  static const _numberKeyboardType = TextInputType.numberWithOptions(
    signed: false,
    decimal: false,
  );

  @override
  void initState() {
    super.initState();
    diceCountController.addListener(() {
      setState(() {
        diceCount = int.tryParse(diceCountController.text) ?? 0;
        if (dices.length < diceCount) {
          dices.addAll(List.generate(diceCount - dices.length, (_) => Dice.d6));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление атаки'),
        actions: [
          TextButton(
            child: Text(expertMode ? 'Простой режим' : 'Экспертный режим'),
            onPressed: () => setState(() => expertMode = !expertMode),
          ),
        ],
      ),
      body: ListView(
        padding: const Pad(horizontal: 8),
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Название атаки'),
          ),
          TextField(
            controller: attacksCountController,
            decoration: const InputDecoration(labelText: 'Количество атак'),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              DefaultZeroInputFormatter(),
            ],
            keyboardType: _numberKeyboardType,
          ),
          TextField(
            controller: attackProbabilityModifierController,
            decoration: InputDecoration(labelText: 'Бонус к попаданию'),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              DefaultZeroInputFormatter(),
            ],
          ),
          if (expertMode)
            ..._buildExpertMode()
          else ...[
            TextField(
              controller: damageModifierController,
              decoration: const InputDecoration(labelText: 'Бонус к урону'),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                DefaultZeroInputFormatter(),
              ],
              keyboardType: _numberKeyboardType,
            ),
            TextField(
              controller: diceCountController,
              decoration: const InputDecoration(labelText: 'Количество костей'),
              keyboardType: _numberKeyboardType,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                LengthLimitingTextInputFormatter(2),
              ],
            ),
            if (diceCount > 0) ...[
              Text(
                'Кости урона',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              _buildDicesGrid(context),
            ],
          ],
          const SizedBox(height: 16),
          Consumer(
            builder: (context, ref, child) => ElevatedButton(
              onPressed: () => addAttack(context, ref),
              child: const Text('Добавить атаку'),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  List<Widget> _buildExpertMode() {
    return [
      TextField(
        controller: formulaController,
        decoration: const InputDecoration(
          labelText: 'Формула урона',
          helperText: 'Пример: 2d12+3d6+4',
        ),
      )
    ];
  }

  Widget _buildDicesGrid(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 5,
      // mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.50,
      shrinkWrap: true,
      children: List.generate(
        diceCount,
        (index) => SizedBox(
          height: 24,
          child: DropdownButton<Dice>(
            items: Dice.values
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ))
                .toList(),
            value: dices[index],
            onChanged: (value) =>
                setState(() => dices[index] = value ?? dices[index]),
          ),
        ),
      ),
    );
  }

  void addAttack(BuildContext context, WidgetRef ref) async {
    late final Formula attackFormula;
    if (expertMode) {
      try {
        attackFormula = Formula.fromString(formulaController.text);
      } on FormatException catch (e) {
        print('Error parsing formula: $e');
      }
    } else {
      final dicesMap = <Dice, int>{};
      for (var element in dices) {
        dicesMap[element] = (dicesMap[element] ?? 0) + 1;
      }
      attackFormula = Formula(
        modifier: int.tryParse(damageModifierController.text) ?? 0,
        dices: dicesMap,
      );
    }
    await ref.read(attacksListProvider.notifier).addAttack(
          Attack(
            name: nameController.text,
            attacksCount: int.tryParse(attacksCountController.text) ?? 1,
            attackProbabilityModifier:
                int.tryParse(attackProbabilityModifierController.text) ?? 0,
            damageFormula: attackFormula,
          ),
        );
    if (context.mounted) {
      Navigator.of(context).pop();
    }
  }
}
