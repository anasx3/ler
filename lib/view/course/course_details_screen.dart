import 'package:elearning/constant/color.dart';
import 'package:elearning/models/lesson.dart';
import 'package:elearning/widgets/custom_icon_button.dart';
import 'package:elearning/widgets/custom_tab_view.dart';
import 'package:elearning/widgets/custom_video_player.dart';
import 'package:elearning/widgets/enrollbottom_sheet.dart';
import 'package:elearning/widgets/lesson_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  int _selectedTag = 0;
  final scrollController = ScrollController();
  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  bool isBuyCartVisible = true;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(listen);
  }

  void listen() {
    final direction = scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isBuyCartVisible) {
      setState(() {
        isBuyCartVisible = true;
      });
    }
  }

  void hide() {
    if (isBuyCartVisible) {
      setState(() {
        isBuyCartVisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: ScreenUtil().setHeight(90),
            leading: Padding(
              padding: EdgeInsets.all(
                ScreenUtil().setWidth(10),
              ),
              child: CustomIconButton(
                  child: Icon(Icons.arrow_back_ios_new_rounded),
                  height: ScreenUtil().setHeight(35),
                  width: ScreenUtil().setHeight(35),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            centerTitle: true,
            title: Text("GitHub دورة تعلم "),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20),
              vertical: ScreenUtil().setHeight(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomVideoPlayer(
                  videoId: "166QtBj0nxQ",
                  startAt: Duration(seconds: 1),
                  endAt: Duration(minutes: 1, seconds: 36),
                ),
                SizedBox(height: 15),
                Text(
                  "GitHub تعلم من البداية إلى الاحتراف",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "github رفع المشروع على ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setSp(12),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.star_half_rounded,
                      color: Colors.grey,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(16),
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.timer,
                      color: Colors.grey,
                    ),
                    Text(
                      " 6 دقايق",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(16),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CustomTabView(changeTab: changeTab, index: _selectedTag),
                _selectedTag == 0
                    ? PlaylistWidget(controller: scrollController)
                    : Description(),
              ],
            ),
          ),
          bottomSheet: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: isBuyCartVisible ? ScreenUtil().setHeight(60) : 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(5),
              ),
              child: BottomSheet(
                  onClosing: () {},
                  backgroundColor: Colors.white,
                  enableDrag: false,
                  builder: (context) {
                    return Wrap(
                      children: [EnrollBottomSheet()],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}

class PlaylistWidget extends StatelessWidget {
  final ScrollController controller;

  const PlaylistWidget({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
          child: ListView.separated(
        controller: controller,
        separatorBuilder: (context, index) {
          return SizedBox(height: 20);
        },
        padding: EdgeInsets.only(top: 20, bottom: 40),
        shrinkWrap: true,
        itemCount: lessonList.length,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
              position: index,
              duration: Duration(milliseconds: 500),
              child: SlideAnimation(
                verticalOffset: -30,
                child: FadeInAnimation(
                  child: LessonCard(
                    lesson: lessonList[index],
                  ),
                ),
              ));
        },
      )),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text(
          "في هذا المقطع، سنتعرف على برنامج  وكيفية استخدامه لإدارة مستودعات الأكواد البرمجية بشكل أسهل وأسرع. سنبدأ بشرح كيفية تثبيت البرنامج على نظام ويندوز، ونتعرف على واجهته الأساسية وأهم الأدوات التي يقدمها للمطورين. هذا المقطع مصمم ليكون دليلاً شاملاً للمبتدئين والمحترفين على حد سواء، حيث يساعدك على رفع الأكواد، تتبع التعديلات، ومزامنة المشاريع بكل سهولة باستخدام واجهة رسومية بسيطة دون الحاجة لاستخدام الأوامر النصية."),
    );
  }
}
