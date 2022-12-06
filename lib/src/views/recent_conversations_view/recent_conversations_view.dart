import 'package:flutter/material.dart';
import 'widgets.dart';

class RecentConversationsView extends StatelessWidget {
  const RecentConversationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  buildRecentConversationsAppBarWidget(),
      body: const BuildRecentConversationBodyWidget(),
    );
  }
}
