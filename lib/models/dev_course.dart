class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}
List<Course> courses = [
  Course(
    author: "البمرمج أنس ",
    completedPercentage: .75,
    name: " GitHub Desktop كيف ترفع مشاريعك خطوة بخطوة على ",
    thumbnail: "assets/icons/github.png",
  ),
  Course(
    author: "أنس الجهني",
    completedPercentage: .75,
    name: "دورة بايثون للمبتدئين",
    thumbnail: "assets/icons/python.png",
  ),
  Course(
    author: "أنس الجهني",
    completedPercentage: .60,
    name: "دليل مطور رياكت الشامل",
    thumbnail: "assets/icons/react.png",
  ),
 Course(
  author: "أنس الجهني",
  completedPercentage: 0.75,
  name: "دورة متقدمة في دارت",
  thumbnail: "assets/icons/dart-programming-language.png",
),

  Course(
    author: "أنس الجهني",
    completedPercentage: .60,
    name: "JavaScript - دورة برمجة شاملة",
    thumbnail: "assets/icons/js.png",
  )
];

