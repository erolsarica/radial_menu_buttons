import 'package:flutter/material.dart';
import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:radial_menu_buttons/alarm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radial Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radial Menu Buttons"),
        backgroundColor: Color(0xFF222850),
      ),
      body: Stack(
        children: [
          RadialMenu(
            //centerButtonAlignment: Alignment(0.9,0.9), // hizalamayı bu kodla değiştirebilirsiniz
            //centerButtonSize: 0.5, // merkezdeki butonun boyutunu değiştirebilirsiniz (0.0-1.0)
            children: [
              RadialButton(
                  icon: Icon(Icons.camera_alt_outlined),
                  buttonColor: Colors.blueAccent,
                  onPress: () => print(""),
              ),
              RadialButton(
                icon: Icon(Icons.access_alarm_outlined),
                buttonColor: Colors.pink,
                onPress: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AlarmPage()),
              ),
              ),
              RadialButton(
                icon: Icon(Icons.add_circle_outline),
                buttonColor: Colors.black,
                onPress: () => print(""),
              ),
              RadialButton(
                icon: Icon(Icons.add_call),
                buttonColor: Colors.indigoAccent,
                onPress: () => print(""),
              ),
              RadialButton(
                icon: Icon(Icons.map),
                buttonColor: Colors.orange,
                onPress: () => print(""),
              ),

              RadialButton(
                icon: Icon(Icons.account_balance_wallet_outlined),
                buttonColor: Colors.brown,
                onPress: () => print(""),
              ),
              RadialButton(
                icon: Icon(Icons.account_tree_outlined),
                buttonColor: Colors.deepPurple,
                onPress: () => print(""),
              ),
              RadialButton(
                icon: Icon(Icons.adb_outlined),
                buttonColor: Colors.green,
                onPress: () => print(""),
              ),
              RadialButton(
                icon: Icon(Icons.add_alert_outlined),
                buttonColor: Colors.red,
                onPress: () => print(""),
              ),
            ],
          )
        ],
      ),
    );
  }
}
