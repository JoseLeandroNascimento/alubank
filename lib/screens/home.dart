import 'package:alubank/components/account_actions.dart';
import 'package:alubank/components/header.dart';
import 'package:alubank/components/point_count.dart';
import 'package:alubank/components/recente_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          RecenteActivity(),
          AccountActions(),
          PointCount()
        ],
      ),
    );
  }
}
