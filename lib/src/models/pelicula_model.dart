class Peliculas{
  List<Pelicula> items = new List();
  Peliculas();
  Peliculas.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null) return;
    for (var item in jsonList){
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }

}

class Pelicula{
  int voteCount;
  int id;
  bool video;
  double voteAverage;
  String title;
  double popularity;
  String posterPath;
  String originalLenguage;
  String originalTitle;
  List<int> genreIds;
  String backdropPath;
  bool adult;
  String overview;
  String releaseDate;


  Pelicula({    
    this.voteCount,
    this.id,
    this.video,
    this.title,
    this.voteAverage,
    this.popularity,
    this.posterPath,
    this.originalLenguage,
    this.originalTitle,
    this.genreIds,
    this.backdropPath,
    this.adult,
    this.overview,
    this.releaseDate,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json)
  {

    voteCount = json['vote_count'];
    id= json['id'];
    video= json['video'];
    title = json['title'];
    voteAverage      = json['vote_average'] / 1;
    popularity= json['popularity'] / 1;
    originalLenguage= json['original_lenguage'];
    originalTitle= json['original_title'];
    genreIds= json['genre_ids'].cast<int>();
    backdropPath= json['backdrop_path'];
    adult= json['adult'];
    overview= json['overview'];
    releaseDate= json['release_date'];

  }

}