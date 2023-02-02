import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';

class EmerDetailsCard extends StatelessWidget {
  Row row;
  EmerDetailsCard({
    required this.row,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.all(8),
      width: 376.w,
      height: 170.26.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(color: const Color.fromRGBO(88, 88, 88, 0.48), blurRadius: 10.r)
          ]),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'حريق في  مبنى الأنوار ',
                style: TextStyle(
                    fontWeight: FontWeightManager.semiBold,
                    fontSize: FontSize.s18,
                    color: ColorManager.mainColor),
              )
            ],
          ),
          row,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/clock.png'),
                  const Text(
                    ':وقت النشر 2:30م',
                    style: TextStyle(fontSize: FontSize.s14),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/date.png'),
                  const Text(
                    'تاريخ الحدث: 3-8-2022',
                    style: TextStyle(
                      fontSize: FontSize.s14,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
