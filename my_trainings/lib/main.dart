import 'package:flutter/material.dart';
import 'package:my_trainings/src/ui/trainings_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const Color BG_COLOR = Color(0xffFF4855);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Training',
      theme: ThemeData(primaryColor: BG_COLOR),
      home: SafeArea(child: MyTrainingDashboard()),
    );
  }
}
