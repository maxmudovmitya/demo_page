import 'package:flutter/material.dart';
import 'package:demo_project/package/second_page.dart';
class FirstPage extends StatefulWidget {
  static const String id = "first_page";
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}


class _FirstPageState extends State<FirstPage> {
  
  _callSecondPage() {
    //Open second page
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return SecondPage();
        }));
  }

  _callSecondPage2() {
    //Open second page
    Navigator.of(context).pushReplacementNamed(SecondPage.id);
  }



  _callSecondPage3() async {
    String userId = "uid2002";
    // Open second page
    Map results = await Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
          return SecondPage(userId: userId);
        }));

    if (results != null && results.containsKey("data")) {
      print(results["data"]);
    } else {
      print("nothing");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            _callSecondPage3();
          },
          child: Text("Open Second Page"),
        ),
      ),
    );
  }
}

