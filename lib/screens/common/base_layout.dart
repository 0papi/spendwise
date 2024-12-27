// provide layout to the application such that you can have all the other pages inside of it
import 'package:flutter/material.dart';

class BaseLayoutScreeen extends StatefulWidget {
  const BaseLayoutScreeen({super.key});

  @override
  State<BaseLayoutScreeen> createState() => _BaseLayoutScreeenState();
}

class _BaseLayoutScreeenState extends State<BaseLayoutScreeen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Base Layout"),
    );
  }
}
