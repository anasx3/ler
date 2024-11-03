class Lesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Lesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}
List<Lesson> lessonList = [
  Lesson(
    duration: '11 دقيقة و 20 ثانية',
    isCompleted: true,
    isPlaying: true,
    name: "لماذا تطوير فلاتر؟",
  ),
  Lesson(
    duration: '10 دقيقة و 11 ثانية',
    isCompleted: false,
    isPlaying: false,
    name: "إعداد فلاتر على نظام ماك",
  ),
  Lesson(
    duration: '7 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "إعداد فلاتر على نظام ويندوز",
  ),
  Lesson(
    duration: '5 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "مقدمة إلى عناصر واجهة مستخدم فلاتر.",
  ),
  Lesson(
    duration: '5 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "ما هي عناصر واجهة المستخدم الثابتة؟",
  ),
  Lesson(
    duration: '5 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "ما هي عناصر واجهة المستخدم المتغيرة؟",
  ),
];

class PythonLesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  PythonLesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<PythonLesson> pythonLessonList = [
  PythonLesson(
    duration: '6 دقائق و 20 ثانية',
    isCompleted: true,
    isPlaying: true,
    name: "لماذا تختار بايثون؟",
  ),
  PythonLesson(
    duration: '20 دقيقة و 11 ثانية',
    isCompleted: false,
    isPlaying: false,
    name: "الوحدات، الكاميرا و Pip",
  ),
  PythonLesson(
    duration: '67 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "المتغيرات وأنواع البيانات",
  ),
  PythonLesson(
    duration: '127 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "البرمجة كائنية التوجه",
  ),
];

class ReactLesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  ReactLesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<ReactLesson> reactLessonList = [
  ReactLesson(
    duration: '7 دقائق و 20 ثانية',
    isCompleted: true,
    isPlaying: true,
    name: "مقدمة إلى React",
  ),
  ReactLesson(
    duration: '2 دقيقة و 11 ثانية',
    isCompleted: false,
    isPlaying: false,
    name: "حقائق ممتعة عن React",
  ),
  ReactLesson(
    duration: '46 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "أول مشروع في React",
  ),
  ReactLesson(
    duration: '127 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "نظرية مفصلة عن JSX",
  ),
];

class DartLesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  DartLesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<DartLesson> dartLessonList = [
  DartLesson(
    duration: '2 دقيقة و 32 ثانية',
    isCompleted: true,
    isPlaying: true,
    name: "إعداد البيئة",
  ),
  DartLesson(
    duration: '9 دقيقة و 11 ثانية',
    isCompleted: false,
    isPlaying: false,
    name: "أساسيات Dart",
  ),
  DartLesson(
    duration: '46 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "السلاسل، تحويل الأنواع، الثوابت، وأمان القيمة null",
  ),
  DartLesson(
    duration: '97 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "المجموعات [قائمة، مجموعة، خريطة]",
  ),
];

class JSLesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  JSLesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<JSLesson> jsLessonList = [
  JSLesson(
    duration: '9 دقيقة و 20 ثانية',
    isCompleted: true,
    isPlaying: true,
    name: "مقدمة إلى JavaScript",
  ),
  JSLesson(
    duration: '2 دقيقة و 13 ثانية',
    isCompleted: false,
    isPlaying: false,
    name: "حقائق ممتعة عن JavaScript",
  ),
  JSLesson(
    duration: '54 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "أساسيات JavaScript",
  ),
  JSLesson(
    duration: '107 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "أنواع البيانات الأساسية في JavaScript",
  ),
  JSLesson(
    duration: '96 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "مستمع أحداث النقر",
  ),
  JSLesson(
    duration: '17 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "ما هي السلاسل ومتغيرات السلسلة؟",
  ),
  JSLesson(
    duration: '68 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "وعود JavaScript",
  ),
  JSLesson(
    duration: '29 دقيقة',
    isCompleted: false,
    isPlaying: false,
    name: "تحسين الرسائل باستخدام دمج السلاسل",
  ),
];
