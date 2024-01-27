import 'package:flutter/material.dart';
import 'package:monymonky_litle/core/core.dart';

class MonyMonkyLittle extends StatelessWidget {
  const MonyMonkyLittle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'MonymonkyLitle',
      theme: AppTheme().getTheme(),
    );
  }
}