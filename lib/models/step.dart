class Step {
  final int no;
  final String title;
  final List<String> descriptions;
  final List<String>? images;

  const Step({
    required this.no,
    required this.title,
    required this.descriptions,
    this.images,
  });
}
