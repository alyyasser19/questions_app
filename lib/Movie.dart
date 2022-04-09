class Movie{

  late String title;
  late String year;
  late String poster;
  late String overview;

  Movie(this.title, this.year, this.poster, this.overview);

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      json['title'],
      json['year'],
      json['poster'],
      json['overview']
    );
  }

}