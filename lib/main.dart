import 'package:flutter/material.dart';
import 'package:project1/halaman2.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController username = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppBar myappbar = AppBar(
      title: Text("Project 1"),
    );
    return Scaffold(
      appBar: myappbar,
      body: Container(
        child: Container(
          margin: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(
                children: [
                  Text("|  Username :  " + phonenumber.text + " |"),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: (() async {
                        final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => inputPhone()));

                        setState(() {
                          phonenumber.text = result.toString();
                        });
                      }),
                      child: Text("Edit Username"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
