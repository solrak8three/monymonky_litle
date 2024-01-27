import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monymonky_litle/features/expenses/0_entity/0_entity.dart';
import 'package:monymonky_litle/features/expenses/providers/expense_datasource_provider.dart';

class ExpensesScreen extends ConsumerWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncExpenseDatasource = ref.watch(expenseDatasourceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gastos'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Expenses Screen!!'),

            TextButton(
              onPressed: () => _addExpense(ref),
              child: const Text('Añade gasto'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addExpense(WidgetRef ref) async {
    final expense = Expense(
      createdAt: DateTime.now(),
      description: 'Pago de prueba',
      amount: 25.5,
      expenseNumber: 'asd123',
      tags: ['prueba', 'test'],
    );

    final expenseDatasource = await ref.read(expenseDatasourceProvider.future);
    await expenseDatasource.add(expense);
  }
}
