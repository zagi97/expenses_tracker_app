import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid(); //Universally Unique IDentifier
//Univerzalni jedinstveni identifikator je 128-bitna oznaka koja se koristi za informacije u računalnim sustavima.

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount; //1.99
  final DateTime date;
  final Category category;

  String get FormattedDate {
    return formatter.format(date);
  }
}
