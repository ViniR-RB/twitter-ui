class Twite {
  final String perfilImage;
  final String perfilName;
  final String perfilIndentidade;
  final String twiteText;
  final List<String?>? twiteImages;

  Twite({
    required this.perfilImage,
    required this.perfilName,
    required this.perfilIndentidade,
    required this.twiteText,
    this.twiteImages,
  });
}
