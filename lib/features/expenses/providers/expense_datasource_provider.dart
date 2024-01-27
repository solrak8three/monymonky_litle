import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monymonky_litle/core/core.dart';
import 'package:monymonky_litle/features/expenses/1_domain/1_domain.dart';
import 'package:monymonky_litle/features/expenses/3_infrastructure/3_infrastructure.dart';

final expenseDatasourceProvider = FutureProvider<ExpenseDatasource>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return ExpenseDatasourceImpl(isar);
});
