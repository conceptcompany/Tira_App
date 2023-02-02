import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.w, 0, 15.w, 10.h),
      height: 70.h,
      width: 428.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
                color: const Color.fromRGBO(0, 0, 0, 0.16),
                blurRadius: 6.r,
                offset: const Offset(0, 3))
          ]),
      child: ListTile(
        leading: Image.asset(
          'assets/images/notilogo.png',
          height: 50.h,
          width: 50.w,
        ),
        title: const Text('بلدة الطيرة ترحب بكم في التطبيق'),
        trailing: Text(
          'منذ  15د',
          style: TextStyle(color: secondColor),
        ),
        // ,
        //
      ),
    );
  }
}
