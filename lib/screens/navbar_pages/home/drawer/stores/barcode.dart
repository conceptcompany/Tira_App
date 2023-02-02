import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/color_manager.dart';

class BarCode extends StatelessWidget {
  const BarCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.h,
      width: 378.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          const Text(
            'مول الأندلس',
            style: TextStyle(color: ColorManager.mainColor),
          ),
          Image.asset('assets/images/barcode.png')
        ],
      ),
    );
  }
}
