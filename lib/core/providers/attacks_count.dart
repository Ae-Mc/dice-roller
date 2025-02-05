import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'attacks_count.g.dart';

@Riverpod(keepAlive: true)
class AttacksCount extends _$AttacksCount {
  int attacksCount = 1;

  @override
  int build() {
    return attacksCount;
  }

  void set(int attacksCount) {
    this.attacksCount = attacksCount;
    ref.invalidateSelf();
  }
}
