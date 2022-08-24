import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alarm Sayfası"),
        backgroundColor: Color(0xFF222850),
      ),
      body: Center(child: Text("Alarm Sayfası", style: TextStyle(fontSize: 24),)),
    );
  }
}
