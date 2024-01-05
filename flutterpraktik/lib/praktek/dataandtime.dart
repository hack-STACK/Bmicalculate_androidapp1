import 'package:flutter/material.dart';

class tanggalwidget extends StatefulWidget {
  const tanggalwidget(String s, {super.key, this.title, required String Title});
  final String? title;
  @override
  State<tanggalwidget> createState() => _tanggalwidgetstate();
}

class _tanggalwidgetstate extends State<tanggalwidget> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("${selectedDate.toLocal()}".split(' ')[0]),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () => {
                        _selectdate(context),
                        print(selectedDate.day +
                            selectedDate.month +
                            selectedDate.year)
                      },
                  child: Text("pilih tanggal"))
            ],
          ),
        ));
  }
}
