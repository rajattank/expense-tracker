import 'package:expence_tracker/expenses_list/expenses_list.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  @override
  Widget build(BuildContext context) {
  return Scaffold(body: Column(
    children: [
      // Container(
      // padding: EdgeInsets.all(16.0),
      // color: Color.fromARGB(255, 182, 150, 231),
      // child: Row(
      //   children: [
      //     const Text(
      //       'Expence Tracker',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         fontWeight: FontWeight.bold,
      //         color: Color.fromARGB(255, 112, 19, 235),
      //       ),
      //     ),
      //     const Padding(padding: EdgeInsets.only(left: 150)),
      //     IconButton(onPressed: (){}, icon: Icon(Icons.add), color: Color.fromARGB(255, 91, 6, 156),),
          const Text('The Chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses))
        ],
      ),
  );
  }
}