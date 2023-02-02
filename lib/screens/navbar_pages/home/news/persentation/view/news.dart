import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/strings_manager.dart';
import 'package:tira_app/core/resources/styles_manager.dart';
import 'package:tira_app/core/resources/values_manager.dart';
import 'package:tira_app/screens/navbar_pages/home/news/persentation/widget/news_card.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../widgets/rounded_custom_text_field.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.news,
        ),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: ContainerBody(
            padding: EdgeInsets.only(
                top: AppSize.s20.h, right: AppSize.s18.w, left: AppSize.s18.w),
            widget: Column(
              children: [
                SizedBox(
                  height: AppSize.s50.h,
                  child: RoundedCustomTextField(
                    hintText: AppStrings.searchinNews,
                    suffixIcon: Icon(
                      Icons.search,
                      size: AppSize.s20.h,
                      color: ColorManager.unselectedIconColor,
                    ),
                    hintStyle: getRegularStyle(
                        color: ColorManager.hintStyleColor,
                        fontSize: FontSize.s17.sp),
                  ),
                ),
                SizedBox(
                  height: AppSize.s10.h,
                ),
                ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const NewsCard();
                    })
              ],
            )),
      ),
    );
  }
}
