class BusinessCourse {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  BusinessCourse({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<BusinessCourse> courses = [
  BusinessCourse(
    author: "أنس الجهني",
    completedPercentage: .45,
    name: "ابدأ مشروعك من الصفر بدون رأس مال",
    thumbnail: "assets/images/businessman.png",
  ),
  BusinessCourse(
    author: "أنس الجهني",
    completedPercentage: .25,
    name: "أساسيات البرمجة للمبتدئين خطوة بخطوة",
    thumbnail: "assets/images/role-model.png",
  ),
  BusinessCourse(
    author: "أنس الجهني",
    completedPercentage: .65,
    name: "كيف تصبح مبرمج محترف وتطور مهاراتك",
    thumbnail: "assets/images/businessman.png",
  ),
  BusinessCourse(
    author: "أنس الجهني",
    completedPercentage: .55,
    name: "التعامل مع تحديات التطوير في مشاريع البرمجة",
    thumbnail: "assets/images/role-model.png",
  ),
];
