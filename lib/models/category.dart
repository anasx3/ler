class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'الأعمال',
    noOfCourses: 4,
    thumbnail: 'assets/images/marketing.png',
  ),
  Category(
    name: 'التطوير',
    noOfCourses: 5,
    thumbnail: 'assets/images/Trailer Icon.png',
  ),
  Category(
    name: 'التصوير',
    noOfCourses: 5,
    thumbnail: 'assets/images/photography.png',
  ),
  Category(
    name: 'تصميم UI',
    noOfCourses: 5,
    thumbnail: 'assets/images/business.png',
  ),
];
