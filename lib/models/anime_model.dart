class AnimeModelResponse {
  List<Results>? results;

  AnimeModelResponse({this.results});

  AnimeModelResponse.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? id;
  String? title;
  String? image;
  double? rating;
  int? releaseDate;
  String? type;

  Results(
      {this.id,
      this.title,
      this.image,
      this.rating,
      this.releaseDate,
      this.type});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    rating = json['rating'];
    releaseDate = json['releaseDate'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['releaseDate'] = this.releaseDate;
    data['type'] = this.type;
    return data;
  }
}
