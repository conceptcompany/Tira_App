import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/drawer/stores/stores_card.dart';
import 'package:tira_app/widgets/appbar.dart';
import 'package:tira_app/widgets/container_body.dart';

class Stores extends StatelessWidget {
  const Stores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(children: [
              AppBarr(
                title: 'المحلات التجارية',
                actions: GestureDetector(
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  onTap: () => Get.back(),
                ),
                leading: const SizedBox(),
              ),
              ContainerBody(
                  widget: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    physics: const ScrollPhysics(),
                    itemBuilder: ((context, index) {
                      return const StoresCard();
                    })),
              ))
            ])));
  }
}
