import 'package:expence_tracker/expenses_list/expense_item.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) =>
            Dismissible(             // gets swiping effect to remove the ojcect.
            key: ValueKey(expenses[index]),
            onDismissed:(direction){
              onRemoveExpense(expenses[index]);
            },
            child: Expenseitem(expenses[index])));
  }
}
