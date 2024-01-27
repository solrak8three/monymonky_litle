import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monymonky_litle/app.dart';

void main() {
  runApp(
      const ProviderScope(
          child: MonyMonkyLittle()
      ),
  );
}
