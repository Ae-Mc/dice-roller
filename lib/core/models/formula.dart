import 'package:dice_roller/core/models/dice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'formula.freezed.dart';
part 'formula.g.dart';

@freezed
class Formula with _$Formula {
  const Formula._();

  const factory Formula({
    @Default(0) int modifier,
    @Default({}) Map<Dice, int> dices,
  }) = _Formula;

  factory Formula.fromString(String formula) {
    final parts = formula.split('+');
    final dices = <Dice, int>{};
    int modifier = 0;
    for (final part in parts) {
      if (part.contains(RegExp(r'[dк]'))) {
        final subparts = part.split(RegExp(r'[dк]'));
        if (subparts.length != 2) {
          throw FormatException(
              "Can't parse formula '$formula': wrong part '$part'");
        }
        final [count, diceNumber] = subparts;
        try {
          dices[Dice.fromInt(int.parse(diceNumber))] = int.parse(count);
        } on StateError {
          throw FormatException(
              "Can't parse formula '$formula': wrong dice number '$diceNumber'");
        } on FormatException catch (e) {
          throw FormatException(
              "Can't parse formula '$formula': '${e.source}' is not a number");
        }
      } else {
        if (modifier != 0) {
          throw FormatException(
              "Can't parse formula '$formula': there is two modifiers: '$modifier' and '$part'");
        } else {
          modifier = int.parse(part);
        }
      }
    }
    return Formula(modifier: modifier, dices: dices);
  }

  factory Formula.fromJson(Map<String, dynamic> json) =>
      _$FormulaFromJson(json);

  @override
  String toString() {
    final dicesString = dices.entries
        .map((entry) => '${entry.value}d${entry.key.value}')
        .join('+');
    final modifierString = modifier == 0 ? '' : '+$modifier';
    return '$dicesString$modifierString';
  }

  List<int> roll() {
    final result = <int>[];
    for (final entry in dices.entries) {
      for (var i = 0; i < entry.value; i++) {
        result.add(entry.key.roll());
      }
    }
    return result;
  }

  List<int> maxRoll() {
    final result = <int>[];
    for (final entry in dices.entries) {
      for (var i = 0; i < entry.value; i++) {
        result.add(entry.key.value);
      }
    }
    return result;
  }
}
