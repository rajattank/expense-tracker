import 'package:expence_tracker/expenses_list/expense_item.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget{
  const ExpenseList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length ,itemBuilder: (context, index) => Expenseitem(expenses[index]));
  }
  
}