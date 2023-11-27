// ignore_for_file: prefer_const_constructors, avoid_print, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LogInHeader extends StatelessWidget {
  const LogInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'JewShoAp',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}