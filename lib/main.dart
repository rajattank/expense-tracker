import 'package:flutter/material.dart';

import 'package:expence_tracker/expenses_list/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
