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
    duration: '6 دقائق',
    isCompleted: true,
    isPlaying: true,
    name: "محتويات دورة GitHub Desktop",
  ),
  Lesson(
    duration: '10 دقيقة و 11 ثانية',
    isCompleted: false,
    isPlaying: false,
    name: "إعداد GitHub Desktop على نظام ويندوز",
  ),
  Lesson(
    duration: '7 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "مقدمة إلى واجهة GitHub Desktop على ويندوز",
  ),
  Lesson(
    duration: '5 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "كيفية إدارة المستودعات على GitHub Desktop ويندوز",
  ),
  Lesson(
    duration: '5 دقائق',
    isCompleted: false,
    isPlaying: false,
    name: "رفع وتحديث الملفات باستخدام GitHub Desktop ويندوز",
  ),
];
