import 'package:flutter/material.dart';

class DialogWidget1 extends StatelessWidget {
  const DialogWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyLayout(),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Text('show alert'),
          onPressed: () {
            showalertdialog(context);
          },
        ));
  }
}

showalertdialog(BuildContext context) {
  // set up the button
  Widget okButton = ElevatedButton(
    child: Text('ok'),
    onPressed: () {},
  );
  // set up alert button
  AlertDialog alert = AlertDialog(
    title: Text("my title"),
    content: Text('THIS IS MY CONTENT'),
    actions: [
      okButton,
    ],
  );

  // set up the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
