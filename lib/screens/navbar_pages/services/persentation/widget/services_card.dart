import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/network/api_constant.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/styles_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../data/models/all_services_model.dart';

class ServicesCard extends StatelessWidget {
  final ServicesModel servicesModel;
  ServicesCard({Key? key, required this.servicesModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.servicesDetails, arguments: [
          servicesModel.id,
          servicesModel.categoryNameAr,
          servicesModel.categoryNameHe
        ]);
      },
      child: Container(
        height: 120.h,
        width: 120.w,
        decoration: BoxDecoration(
            color: ColorManager.white,
            border: Border.all(width: 1.w, color: ColorManager.mainColor),
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(0, 0, 0, 0.16),
                offset: const Offset(0, 3),
                blurRadius: 6.r,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: '${ApiConstant.base}${servicesModel.image}',
              fit: BoxFit.cover,
              placeholder: (context, url) => CircularProgressIndicator(),
              height: AppSize.s50.h,
              width: AppSize.s50.w,
              errorWidget: (context, url, error) => Icon(Icons.error),
              // color: cardColor,
            ),
            // Image.network(
            //   '${ApiConstant.base}${servicesModel.image}',
            // ),
            Text(
              '${servicesModel.categoryNameAr}',
              style: getRegularStyle(
                color: ColorManager.outerCircleShadow,
                fontSize: FontSize.s16.sp,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
