import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../res/strings.dart';
import '../res/styles.dart';

enum DialogType {
  confirm,
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    this.title,
    this.url,
    this.content,
    this.rightText,
    this.leftText,
    this.onTapLeft,
    this.onTapRight,
  }) : super(key: key);
  final String? title;
  final String? url;
  final String? content;
  final String? rightText;
  final String? leftText;
  final Function()? onTapLeft;
  final Function()? onTapRight;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Container(
            width: 280.w,
            color: Styles.c_FFFFFF,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Text(
                    title ?? '',
                    style: Styles.ts_0C1C33_17sp,
                  ),
                ),
                Divider(
                  color: Styles.c_E8EAEF,
                  height: 0.5.h,
                ),
                Row(
                  children: [
                    _button(
                      bgColor: Styles.c_FFFFFF,
                      text: leftText ?? StrRes.cancel,
                      textStyle: Styles.ts_0C1C33_17sp,
                      onTap: onTapLeft ?? () => Get.back(result: false),
                    ),
                    Container(
                      color: Styles.c_E8EAEF,
                      width: 0.5.w,
                      height: 48.h,
                    ),
                    _button(
                      bgColor: Styles.c_FFFFFF,
                      text: rightText ?? StrRes.determine,
                      textStyle: Styles.ts_0089FF_17sp,
                      onTap: onTapRight ?? () => Get.back(result: true),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _button({
    required Color bgColor,
    required String text,
    required TextStyle textStyle,
    Function()? onTap,
  }) =>
      Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
            ),
            height: 48.h,
            alignment: Alignment.center,
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      );
}

