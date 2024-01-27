import 'package:isar/isar.dart';
import 'package:monymonky_litle/features/expenses/0_entity/0_entity.dart';
import 'package:monymonky_litle/features/expenses/1_domain/1_domain.dart';


class ExpenseDatasourceImpl extends ExpenseDatasource {

  final Isar isar;

  ExpenseDatasourceImpl(this.isar);

  @override
  Future<void> add(Expense expense) async {
    await isar.writeTxn(() => isar.expenses.put(expense));
  }

  @override
  Future<List<Expense>> getAll(FilterExpense filter) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<List<Expense>> getById(String expenseNumber) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(Expense expense) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String expenseNumber) {
    // TODO: implement delete
    throw UnimplementedError();
  }

}