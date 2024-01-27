import 'package:monymonky_litle/features/expenses/0_entity/0_entity.dart';

abstract class ExpenseDatasource {
  Future<void> add(Expense expense);

  Future<List<Expense>> getAll(FilterExpense filter);

  Future<List<Expense>> getById(String expenseNumber);

  Future<void> delete(String expenseNumber);

  Future<void> update(Expense expense);
}