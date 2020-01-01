import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Cards.dart';
//import 'Test.dart';

class HomeView extends StatelessWidget {
  var cardsList = CardsBulider().ReturnCards();

  /// This Widget is the main application widget.
  @override
  Widget ImportanceRewe(BuildContext context, value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        return Icon(
          i < value ? Icons.monetization_on : Icons.attach_money,
          color: Colors.grey,
          size: 23,
        );
      }),
    );
  }

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
      margin: EdgeInsets.all(10),
      elevation: 10,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(backgroundColor: Colors.greenAccent),
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
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                                DateFormat('kk:mm -- d MMM yyyy')
                                    .format(cardsList[index].createDate)
                                    .toString(),
                                style: TextStyle(color: Colors.black)),
                            SizedBox(
                              width: 30,
                            ),
                            ImportanceRewe(
                                context, cardsList[index].investmentPercent),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(color: Colors.black38),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    Text(cardsList[index].symbol,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(cardsList[index].companyName),
                  ],
                ),
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
