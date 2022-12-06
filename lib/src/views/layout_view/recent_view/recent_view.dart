import 'package:flutter/material.dart';
import 'widgets.dart';

class RecentView extends StatelessWidget {
  const RecentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildRecentAppBarWidget(),
      body: const BuildRecentBodyWidget(),
    );
  }
}
