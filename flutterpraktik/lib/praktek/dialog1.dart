import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext dialog1) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(dialog1).colorScheme.inversePrimary,
        title: const Text("Dialog"),
      ),
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
        child: const Text('Show Alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // ignore: unused_local_variable
  Widget okButton = ElevatedButton(
    child: Text('OK'),
    onPressed: () {},
  );
  // ignore: unused_local_variable
  AlertDialog alert = AlertDialog(
    title: const Text('ERROR'),
    content: Text('System Error, Please Restart Your Device'),
    actions: [okButton],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
