import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/resources/values_manager.dart';

class ListFilterWidget extends StatelessWidget {
  final String assetName;
  final String title;

  const ListFilterWidget({
    required this.assetName,
    required this.title,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: AppSize.s0,
      trailing: const Icon(Icons.arrow_forward_ios_sharp),
      title: Text(
        title,
        style: context.textTheme.titleMedium,
      ),
      leading: SvgPicture.asset(
        assetName,
        height: AppSize.s23.h,
        width: AppSize.s18.w,
      ),
    );
  }
}
