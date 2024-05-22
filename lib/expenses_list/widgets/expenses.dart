import 'package:expence_tracker/expenses_list/expenses_list.dart';
import 'package:expence_tracker/expenses_list/widgets/new_expense.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';
class Expenses extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course', amount: 500, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amount: 1000, date: DateTime.now(), category: Category.leisure),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx) =>const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:const Text('Flutter ExpenseTracker'),
      actions: [
        IconButton(onPressed: _openAddExpenseOverlay , icon: Icon(Icons.add))
      ],
    ),
    body: Column(
    children: [
          const Text('The Chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses))
        ],
      ),
  );
  }
}