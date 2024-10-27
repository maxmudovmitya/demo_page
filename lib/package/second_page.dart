import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  static const String id = "second_page";
  final String? userId;

  const SecondPage({super.key, this.userId});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  _callBackPage() {
    var map = {"data": 11};
    Navigator.of(context).pop(map);
  }

  @override
  void initState() {
    super.initState();
    print(widget.userId!);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Second Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.green,
          onPressed: () {
            _callBackPage();
          },
          child: Text(
            "${widget.userId}",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
