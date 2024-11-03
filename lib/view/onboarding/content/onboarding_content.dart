import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

int height = 300;

class OnboardingContent {
  final String title;
  final String subtitle;
  final Widget animations;

  OnboardingContent(
      {required this.title, required this.subtitle, required this.animations});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: "ادرس بجدول مرن",
    subtitle:
        "دروس حية وتفاعلية مع تسجيلات للمراجعة ومرشدين متاحين على مدار الساعة لحل أي استفسار.",
    animations: Image.asset(
      "assets/images/on1.png",
      height: ScreenUtil().setHeight(height),
    ),
  ),
 OnboardingContent(
  title: "اكتسب المهارات",
  subtitle: "تعلم بذكاء وحقق أهدافك في المجال.",
  animations: Image.asset(
    "assets/images/Nerd-amico.png",
    height: ScreenUtil().setHeight(height),
  ),
),

  OnboardingContent(
      title: "تعلم معي ",
      subtitle:
          "تعلم معي واكتسب المهارات اللي توصلك لأهدافك",
      animations: Image.asset(
        "assets/images/busin.png",
        height: ScreenUtil().setHeight(height),
      )),
];
