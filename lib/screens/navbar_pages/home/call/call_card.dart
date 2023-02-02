import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/home/call/call_details.dart';

import '../../../../core/resources/color_manager.dart';

class CallCard extends StatelessWidget {
  RepostsCard repostsCard;
  CallCard({
    required this.repostsCard,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 95.h,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.white,
      ),
      child: ExpansionTile(
        textColor: ColorManager.mainColor,
        collapsedTextColor: ColorManager.mainColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(repostsCard.image),
            SizedBox(
              width: 10.w,
            ),
            Text(repostsCard.title)
          ],
        ),
        trailing: const SizedBox(),
        children: repostsCard.list,
      ),
    );
  }
}

class RepostsCard {
  String image;
  String title;
  List<Widget> list;
  VoidCallback? onPressed;

  RepostsCard(this.image, this.title, this.list, this.onPressed);
}

List<RepostsCard> reportsCard = <RepostsCard>[
  RepostsCard(
      'assets/images/security.png',
      'الأمن و السلامة',
      [
        GestureDetector(
          onTap: () {
            Get.to(() => const CallDetails());
          },
          child: Row(
            children: [
              Image.asset('assets/images/animals.png'),
              const Text(
                'عنف الحيوانات',
              ),
            ],
          ),
        ),
        Divider(
          color: secondColor,
          height: 2,
        ),
        Row(
          children: [
            Image.asset('assets/images/thief.png'),
            const Text(
              'سرقة الممتلكات  العامة',
            ),
          ],
        ),
        Divider(
          color: secondColor,
        ),
        Row(
          children: [
            Image.asset('assets/images/violence.png'),
            const Text('العنف المشتبه به'),
          ],
        ),
      ],
      () {}),
  RepostsCard('assets/images/fees.png', 'الجباية و الضرائب',
      [const Text('ddd'), const Text('dddd')], () {}),
  RepostsCard('assets/images/veterinary.png', 'الطب البيطري',
      [const Text('ddd'), const Text('dddd')], () {}),
  RepostsCard('assets/images/business.png', 'الأعمال',
      [const Text('ddd'), const Text('dddd')], () {}),
  RepostsCard('assets/images/environment.png', 'البيئة و النظافة',
      [const Text('ddd'), const Text('dddd')], () {}),
  RepostsCard('assets/images/education.png', 'المؤسسات التعليمية',
      [const Text('ddd'), const Text('dddd')], () {}),
];
