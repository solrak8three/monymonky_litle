import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:monymonky_litle/core/network/local/isar_config.dart';

final isarProvider = FutureProvider<Isar>((ref) async {
  return await IsarConfig.isarInstance;
});
