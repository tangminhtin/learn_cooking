class Tip {
  final String title;
  final List<String> descriptions;
  final List<String>? images;

  const Tip({
    required this.title,
    required this.descriptions,
    this.images,
  });
}
