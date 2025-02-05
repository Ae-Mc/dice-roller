import 'package:dice_roller/core/models/attack_advantage_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'advantage_type.g.dart';

@Riverpod(keepAlive: true)
class AdvantageType extends _$AdvantageType {
  AttackAdvantageType advantageType = AttackAdvantageType.normal;

  @override
  AttackAdvantageType build() {
    return advantageType;
  }

  void set(AttackAdvantageType advantageType) {
    this.advantageType = advantageType;
    ref.invalidateSelf();
  }
}
