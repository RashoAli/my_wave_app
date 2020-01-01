import 'package:flutter/material.dart';

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

class CardsBulider{

  List<Cards> cardsListG = [
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

  List ReturnCards(){
    cardsListG.add(
        Cards("claus musterman", DateTime.now(), 1.5, "Not TSLA", 'Not Tesla',
        'just do it')
    );

    return cardsListG;
  }
}