import 'package:monymonky_litle/features/expenses/0_entity/expense.dart';
import 'package:monymonky_litle/features/expenses/0_entity/filter_expense.dart';
import 'package:monymonky_litle/features/expenses/1_domain/1_domain.dart';

class ExpenseRepositoryImpl extends ExpenseRepository {

  final ExpenseDatasource datasource;

  ExpenseRepositoryImpl(this.datasource);

  @override
  Future<void> add(Expense expense) {
    return datasource.add(expense);
  }

  @override
  Future<List<Expense>> getAll(FilterExpense filter) {
    return datasource.getAll(filter);
  }

  @override
  Future<List<Expense>> getById(String expenseNumber) {
    return datasource.getById(expenseNumber);
  }

  @override
  Future<void> update(Expense expense) {
    return datasource.update(expense);
  }

  @override
  Future<void> delete(String expenseNumber) {
    return datasource.delete(expenseNumber);
  }
}