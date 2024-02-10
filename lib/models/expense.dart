import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid(); // Uuid is a third party package to generate unique id

enum Category {food, travel, leisure, work} // enum is custom type to just accept this values

const CategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense{
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id=uuid.v4(); // method v4 os Uuid class generate a unique String id

  final String id;
  final String title;
  final double amount; //1.99 double type
  final DateTime date;
  final Category category;

  String get formattedDate{
    return formatter.format(date);
  }
}