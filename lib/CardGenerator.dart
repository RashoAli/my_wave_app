import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Cards.dart';

class HomeView extends StatelessWidget {
  var cardsList = cardsListG;

  /// This Widget is the main application widget.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: cardsList.length,
          itemBuilder: (BuildContext context, int index) =>
              SuggestionCard(context, index)),
    );
  }

  Widget SuggestionCard(BuildContext context, int index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(5),
      elevation: 3,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(backgroundColor: Colors.white),
                SizedBox(width: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 1,
                    ),
                    Column(
                      children: <Widget>[
                        Text(cardsList[index].name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text(
                            DateFormat('kk:mm -- d MMM yyyy')
                                .format(cardsList[index].createDate)
                                .toString(),
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(color: Colors.black),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                ),
                Column(
                  children: <Widget>[
                    Text(cardsList[index].symbol,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(cardsList[index].companyName)
                  ],
                ),
                Spacer(),
                Spacer(),
                Flexible(
                  child: Text(cardsList[index].comments),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
