import 'package:flutter/material.dart';
import 'widgets.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBarWidget(),
      body: const BuildHomeBodyWidget(),
    );
  }
}


