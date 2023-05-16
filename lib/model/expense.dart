import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
enum Category { Food, Study, Friends, Unnecessary }

const uuid = Uuid();

const categoryIcons = {
  Category.Food: Icons.lunch_dining,
  Category.Study: Icons.book,
  Category.Unnecessary: Icons.transfer_within_a_station,
  Category.Friends: Icons.people,
};
class Expense {
  Expense(
      {required this.title,
      required this.category,
      required this.amount,
      required this.date}): id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;


  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
      .where((expense) => expense.category == category)
      .toList();
  final Category category;
  final List<Expense> expenses;
  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount; // sum = sum + expense.amount
    }
    return sum;
  }
}