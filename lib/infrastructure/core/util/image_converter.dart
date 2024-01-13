class ImageConverter {
  static List<int> fromDynamicListToIntList(List<dynamic> image) {
    return image.map((e) => e as int).toList();
  }
}
