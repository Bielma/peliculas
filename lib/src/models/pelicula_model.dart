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

    voteCount         = json['vote_count'];
    id                = json['id'];
    video             = json['video'];
    title             = json['title'];
    voteAverage       = json['vote_average'] / 1;
    popularity        = json['popularity'] / 1;
    posterPath        = json['poster_path'];
    originalLenguage  = json['original_lenguage'];
    originalTitle     = json['original_title'];
    genreIds          = json['genre_ids'].cast<int>();
    backdropPath      = json['backdrop_path'];
    adult             = json['adult'];
    overview          = json['overview'];
    releaseDate       = json['release_date'];

  }

  getPosterImg(){
    if(posterPath == null){
      return 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fi0.kym-cdn.com%2Fphotos%2Fimages%2Ffacebook%2F001%2F244%2F891%2Fd1f.png&f=1&nofb=1';
      
    }else{
      print('https://image.tmdb.org/t/p/w500/$posterPath');
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
    
  }
}