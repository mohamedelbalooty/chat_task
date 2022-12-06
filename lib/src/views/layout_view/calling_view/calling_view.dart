import 'package:flutter/material.dart';
import 'widgets.dart';

class CallingView extends StatelessWidget {
  const CallingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCallingAppBarWidget(),
      body: const BuildCallingBodyWidget(),
    );
  }
}
