import 'package:isar/isar.dart';

part 'expense.g.dart';

@collection
class Expense {
  Id id = Isar.autoIncrement;

  String description;

  @Index(unique: true)
  String expenseNumber;

  List<String> tags;

  double amount;

  String? imagePath;

  DateTime createdAt;

  Expense({
    required this.description,
    required this.expenseNumber,
    required this.amount,
    required this.tags,
    required this.createdAt,
    this.imagePath,
  });

  @override
  String toString() {
    return 'Account{id: $id, name: $description, accountNumber: $expenseNumber, balance: $amount, createdAt: $createdAt}';
  }
}
