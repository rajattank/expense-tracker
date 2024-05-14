import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {food, travel, leisure, work}// enum is a keyword which allows us to create a custom type which is a combination of redefined allowed values

const categoryIcons = {
  Category.food: Icons.food_bank_outlined,
  Category.leisure: Icons.movie_creation_outlined,
  Category.travel: Icons.flight_takeoff_outlined,
  Category.work: Icons.computer_outlined,
};

class Expense{
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}