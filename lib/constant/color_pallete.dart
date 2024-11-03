// Colors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kTextColor = Color(0xFF1E1E2C);          // لون نص داكن بعض الشيء ليكون واضحًا
const kBlueColor = Color(0xFF5A8DEE);          // لون أزرق حيوي للأزرار أو الروابط
const kBestSellerColor = Color(0xFFFFB74D);    // لون برتقالي فاتح لإبراز العناصر المميزة
const kGreenColor = Color(0xFF66BB6A);         // لون أخضر طبيعي للحالات الإيجابية أو التقدم
const kBackgroundColor = Color(0xFFFAFAFA);    // لون خلفية فاتح ليعطي إحساسًا بالنظافة

// Text Styles

var kHeadingTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(28),
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

var kSubheadingTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(24),
  color: Color(0xFF61688B),
  height: 2,
);

var kTitleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(17),
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

var kSubtitleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(18),
  color: kTextColor,
);
