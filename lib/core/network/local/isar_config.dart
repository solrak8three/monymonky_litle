import 'package:isar/isar.dart';
import 'package:monymonky_litle/features/expenses/0_entity/expense.dart';
import 'package:path_provider/path_provider.dart';

class IsarConfig {
  static Isar? _isarInstance;

  static Future<Isar> get isarInstance async => _isarInstance ??= await openDB();

  static Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    _isarInstance ??= await Isar.open(
      [
        ExpenseSchema,
      ],
      inspector: true,
      directory: dir.path,
    );
    return _isarInstance!;
  }

  static void closeDB() {
    _isarInstance?.close();
    _isarInstance = null;
  }
}