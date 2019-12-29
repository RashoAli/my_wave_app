import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cards {
  final String name;
  final DateTime createDate;
  final double investmentPercent;

  final String symbol;
  final String companyName;
  final String comments;

  Cards(this.name, this.createDate, this.investmentPercent, this.symbol,
      this.companyName, this.comments);
}

final List<Cards> cardsListG = [
  Cards("claus musterman sehr lange name", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
  Cards("claus musterman", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
  Cards("claus musterman", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
  Cards("claus musterman", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
  Cards("claus musterman", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
  Cards("claus musterman", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
  Cards("claus musterman", DateTime.now(), 1.5, "TSLA", 'Tesla',
      'buy low sell high'),
];

