class Movie {
  final int id;
  final String name;
  final int? year;
  final String? description;
  final double ratingKp;
  final String? posterUrl;

  Movie({
    required this.id,
    required this.name,
    this.year,
    this.description,
    required this.ratingKp,
    this.posterUrl,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      name: json['name'] ?? 'Без названия',
      year: json['year'],
      description: json['description'],
      ratingKp: (json['rating']?['kp'] as num?)?.toDouble() ?? 0.0,
      posterUrl: json['poster']?['previewUrl'],
    );
  }
}