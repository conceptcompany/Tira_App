import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/assets_manager.dart';
import '../../../../../../core/resources/color_manager.dart';

class AgendaCard extends StatelessWidget {
  const AgendaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorManager.white,
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(88, 88, 88, 0.48), blurRadius: 10)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'يوم  المرأة العالمي',
            style: context.textTheme.displayLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImageAssets.date),
              const SizedBox(
                width: 10,
              ),
              Text(
                'تاريخ الاجازة: 3-8-2022',
                style: context.textTheme.titleMedium,
              ),
            ],
          )
        ],
      ),
    );
  }
}
