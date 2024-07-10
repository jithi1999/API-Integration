import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> fetchData() async {
    var baseurl =
        Uri.parse("https://www.dummy.restapiexample.com/api/v1/employees");
    final response = await http.get(baseurl);
    if (response.statusCode == 200) {
      print(response.body.toString());
    } else {
      print("something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: Text("ok"))),
    );
  }
}
