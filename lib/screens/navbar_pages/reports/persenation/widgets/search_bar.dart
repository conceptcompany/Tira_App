import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/assets_manager.dart';
import 'package:tira_app/core/resources/font_manager.dart';
import 'package:tira_app/core/resources/strings_manager.dart';
import 'package:tira_app/core/resources/styles_manager.dart';
import 'package:tira_app/screens/navbar_pages/reports/reports_row.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/values_manager.dart';
import '../../../../../widgets/rounded_custom_text_field.dart';

class SearchBaar extends StatelessWidget {
  const SearchBaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: AppSize.s18.h),
      height: AppSize.s50.h,
      child: RoundedCustomTextField(
          hintText: AppStrings.searchInreports,
          suffixIcon: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  useRootNavigator: true,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSize.s12.r),
                        topRight: Radius.circular(AppSize.s12.r)),
                  ),
                  builder: (context) {
                    return Container(
                      // height: 391.h,
                      decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSize.s12.r),
                            topRight: Radius.circular(AppSize.s12.r)),
                      ),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          'فلتر التقارير',
                          style: context.theme.primaryTextTheme.titleMedium,
                        ),
                        SizedBox(
                          height: AppSize.s15.h,
                        ),
                        Divider(
                          color: ColorManager.dividerGrey,
                          thickness: AppSize.s0_5.h,
                          height: AppSize.s1.h,
                        ),
                        const ListFilterWidget(
                            assetName: ImageAssets.typeReportIcon,
                            title: 'نوع التقرير'),
                        Divider(
                          color: ColorManager.dividerGrey1,
                          thickness: AppSize.s0_5.h,
                          height: AppSize.s1.h,
                        ),
                        const ListFilterWidget(
                            assetName: ImageAssets.requsetStatusIcon,
                            title: 'حالة التقرير'),
                        Divider(
                          color: ColorManager.dividerGrey1,
                          thickness: AppSize.s0_5.h,
                          height: AppSize.s1.h,
                        ),
                        const ListFilterWidget(
                            assetName: ImageAssets.requsetIcon,
                            title: 'رقم التقرير'),
                        Divider(
                          color: ColorManager.dividerGrey1,
                          thickness: AppSize.s0_5.h,
                          height: AppSize.s1.h,
                        ),
                        const ListFilterWidget(
                            assetName: ImageAssets.calendarDateIcon,
                            title: 'تاريخ التقرير'),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorManager.mainColor,
                                  fixedSize: Size(296.w, 42.h)),
                              child: Text(
                                'عرض النتائج',
                                style:
                                    context.theme.primaryTextTheme.titleSmall,
                              )),
                        )
                      ]),
                    );
                  },
                );
              },
              icon: SvgPicture.asset(
                ImageAssets.filterIcon,
                height: AppSize.s20.h,
                width: AppSize.s20.w,
                color: ColorManager.unselectedIconColor,
              )),
          hintStyle: getRegularStyle(
              color: ColorManager.hintStyleColor, fontSize: FontSize.s17.sp)),
    );
  }
}
