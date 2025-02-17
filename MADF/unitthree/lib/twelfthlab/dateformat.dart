import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatdemo extends StatefulWidget {

  @override
  State<DateFormatdemo> createState() => _DateFormatdemoState();
}

class _DateFormatdemoState extends State<DateFormatdemo> {
  DateTime date = new DateTime.now();

  DateTime? d2;
  @override
  Widget build(BuildContext context) {
    String f1=DateFormat('dd/mm/yyyy').format(d2!);

    return Scaffold(
      appBar: AppBar(
        title: Text('Date time format'),
      ),
      body: Column(
        children: [
          Text(
            d2.toString(),
            style: TextStyle(fontSize: 50),
          ),
          // Text(),
          ElevatedButton(
              onPressed: () async {
                DateTime? d = await showDatePicker(
                    context: context,
                    initialDate: d2 ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000));

                if (d != null && d2 != d) {
                  setState(() {
                    d2 = d;
                  });
                }
              },
              child: Text("data"))

        ],

      ),
    );
  }
}
