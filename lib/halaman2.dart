import 'package:flutter/material.dart';

class inputPhone extends StatefulWidget {
  const inputPhone({Key? key}) : super(key: key);

  @override
  State<inputPhone> createState() => _inputPhoneState();
}

class _inputPhoneState extends State<inputPhone> {
  TextEditingController ctrPhone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Your Username"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: ctrPhone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Edit Username"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, ctrPhone.text);
                },
                child: Text("Edit"))
          ],
        ),
      ),
    );
  }
}
