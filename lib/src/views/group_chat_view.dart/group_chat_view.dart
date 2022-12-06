import 'package:flutter/material.dart';
import 'widgets.dart';

class GroupChatView extends StatelessWidget {
  const GroupChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildGroupChatAppBar(context),
      body: const BuildGroupChatBodyWidget(),
    );
  }
}
