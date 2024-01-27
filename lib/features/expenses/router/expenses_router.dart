import 'package:go_router/go_router.dart';
import 'package:monymonky_litle/core/core.dart';
import 'package:monymonky_litle/features/features.dart';

List<GoRoute> getExpensesRoutes() => [
  GoRoute(
    path: ExpensesRoutes.expenses,
    pageBuilder: (context, state) => fadeTransitionPage(
        context: context,
        state: state,
        child: const ExpensesScreen(),
    ),
  ),
];