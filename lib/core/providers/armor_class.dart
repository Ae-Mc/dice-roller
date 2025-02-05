import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'armor_class.g.dart';

@Riverpod(keepAlive: true)
class ArmorClass extends _$ArmorClass {
  int armorClass = 10;

  @override
  int build() {
    return armorClass;
  }

  void set(int armorClass) {
    this.armorClass = armorClass;
    ref.invalidateSelf();
  }
}
