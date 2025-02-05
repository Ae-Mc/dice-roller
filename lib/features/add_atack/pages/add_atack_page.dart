import 'dart:math';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dice_roller/core/models/dice.dart';
import 'package:flutter/material.dart';

class AddAtackPage extends StatefulWidget {
  const AddAtackPage({super.key});

  @override
  State<AddAtackPage> createState() => _AddAtackPageState();
}

class _AddAtackPageState extends State<AddAtackPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _attacksCountController = TextEditingController();
  final TextEditingController _expertController = TextEditingController();
  final TextEditingController _damageModifierController =
      TextEditingController();
  final TextEditingController _diceCountController = TextEditingController();
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
    _attacksCountController
        .addListener(() => applyNumberMask(_attacksCountController));
    _damageModifierController
        .addListener(() => applyNumberMask(_damageModifierController));
    _diceCountController.addListener(() {
      applyNumberMask(_diceCountController);
      applyLengthMask(_diceCountController, 2);
      setState(() {
        diceCount = int.tryParse(_diceCountController.text) ?? 0;
        if (dices.length < diceCount) {
          dices.addAll(List.generate(diceCount - dices.length, (_) => Dice.d6));
        }
      });
    });
  }

  void applyNumberMask(TextEditingController controller) {
    final currentValue = controller.value;
    final currentText = currentValue.text;
    final newText = currentText.replaceAll(RegExp('[^[0-9]'), '');
    final newOffset =
        currentValue.selection.baseOffset + newText.length - currentText.length;
    controller.value = controller.value.copyWith(
      text: newText,
      selection:
          TextSelection.collapsed(offset: min(newText.length, newOffset)),
    );
  }

  void applyLengthMask(TextEditingController controller, int maxLength) {
    final currentValue = controller.value;
    final currentText = currentValue.text;
    final newText =
        currentText.substring(0, min(maxLength, currentText.length));
    final newOffset =
        currentValue.selection.baseOffset + newText.length - currentText.length;
    controller.value = controller.value.copyWith(
      text: newText,
      selection:
          TextSelection.collapsed(offset: min(newText.length, newOffset)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление атаки'),
        actions: [
          Checkbox(
            value: expertMode,
            onChanged: (value) => setState(() => expertMode = value!),
          ),
        ],
      ),
      body: ListView(
        padding: const Pad(horizontal: 8),
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Название атаки'),
          ),
          TextField(
            controller: _attacksCountController,
            decoration: const InputDecoration(labelText: 'Количество атак'),
            keyboardType: _numberKeyboardType,
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Бонус к попаданию'),
          ),
          if (expertMode)
            ..._buildExpertMode()
          else ...[
            TextField(
              controller: _damageModifierController,
              decoration: const InputDecoration(labelText: 'Бонус к урону'),
              keyboardType: _numberKeyboardType,
            ),
            TextField(
              controller: _diceCountController,
              decoration: const InputDecoration(labelText: 'Количество костей'),
              keyboardType: _numberKeyboardType,
            ),
            if (1 > 0) ...[
              Text(
                'Кости урона',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              _buildDicesGrid(context),
            ],
          ],
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Добавить атаку'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  List<Widget> _buildExpertMode() {
    return [
      TextField(
        controller: _expertController,
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
}
