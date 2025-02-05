import 'dart:math';

enum Dice {
  d3(3),
  d4(4),
  d6(6),
  d8(8),
  d10(10),
  d12(12),
  d20(20),
  d100(100);

  const Dice(this.value);
  final int value;

  int roll() => 1 + Random().nextInt(value);

  factory Dice.fromInt(int value) {
    return Dice.values.firstWhere((dice) => dice.value == value);
  }
}
