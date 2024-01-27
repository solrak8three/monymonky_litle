import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monymonky_litle/features/expenses/expenses.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _redirectToExpenses();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen!!'),
      ),
    );
  }

  void _redirectToExpenses() async {
    Timer(const Duration(seconds: 2),() {
      context.go(ExpensesRoutes.expenses);
    });
  }
}
