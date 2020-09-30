import 'package:flutter/material.dart';
import './tranactions.dart';
import 'package:intl/intl.dart'; //i use intl package for date and formmation

void main() => runApp(DailyList());

class DailyList extends StatelessWidget {
  final List<Transactions> transaction = [
    Transactions(
      id: 't1',
      titel: "New Shirt",
      ammount: 33.33,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      titel: "Shock",
      ammount: 13.33,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.red,
                child: Text("Chart!"),
                elevation: 5,
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      )),
                      child: Text(
                        '\$${tx.ammount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.titel,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.teal,
                          ),
                        ),
                        Text(DateFormat('yyyy/MM/dd').format(tx.date),//inatialize package
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                              color: Colors.grey,
                            )),
                      ],
                    )
                  ],
                ));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
