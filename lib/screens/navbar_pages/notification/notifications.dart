import 'package:flutter/material.dart';
import 'package:tira_app/screens/navbar_pages/notification/notification_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../core/resources/color_manager.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ContainerBody(
              widget: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return const NotificationCard();
                  }))),
        ));
  }
}
