import 'package:flutter/material.dart';
import 'package:grocery/views/appbarmain.dart';
import 'package:grocery/views/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBarMain(),
      body: Body()
    );
  }
}
