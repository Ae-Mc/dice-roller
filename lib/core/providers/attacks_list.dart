import 'dart:convert';

import 'package:dice_roller/core/models/attack.dart';
import 'package:dice_roller/core/providers/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'attacks_list.g.dart';

@riverpod
class AttacksList extends _$AttacksList {
  @override
  Future<List<Attack>> build() async {
    final storage = await ref.watch(storageProvider.future);
    return _getAttacks(storage);
  }

  Future<void> addAttack(Attack attack) async {
    await _modifyAttacks((attacks) => attacks..add(attack));
  }

  Future<void> removeAttack(Attack attack) async {
    await _modifyAttacks((attacks) => attacks..remove(attack));
  }

  Future<void> replaceAttack(Attack oldAttack, Attack newAttack) async {
    await _modifyAttacks((attacks) {
      attacks[attacks.indexOf(oldAttack)] = newAttack;
      return attacks;
    });
  }

  List<Attack> _getAttacks(SharedPreferences storage) {
    final rawAttacks = storage.getStringList('attacks') ?? [];
    return rawAttacks.map((e) => Attack.fromJson(jsonDecode(e))).toList();
  }

  Future<void> _modifyAttacks(
      List<Attack> Function(List<Attack> attacks) modifier) async {
    final storage = await ref.read(storageProvider.future);
    var attacks = _getAttacks(storage);
    attacks = modifier(attacks);
    final rawAttacks = attacks.map((e) => jsonEncode(e.toJson())).toList();
    await storage.setStringList('attacks', rawAttacks);
    ref.invalidateSelf();
  }
}
