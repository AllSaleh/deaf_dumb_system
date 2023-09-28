class ShowcategModel {
  int? id;
  String? word;
  String? wordComplement;
  String? wordEn;
  String? video;
  String? category;
  String? categoryEn;
  String? description;
  String? descriptionImage;
  int? like;
  int? dislike;

  ShowcategModel(
      {this.id,
      this.word,
      this.wordComplement,
      this.wordEn,
      this.video,
      this.category,
      this.categoryEn,
      this.description,
      this.descriptionImage,
      this.like,
      this.dislike});

  ShowcategModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    word = json['word'];
    wordComplement = json['wordComplement'];
    wordEn = json['wordEn'];
    video = json['video'];
    category = json['category'];
    categoryEn = json['categoryEn'];
    description = json['description'];
    descriptionImage = json['descriptionImage'];
    like = json['like'];
    dislike = json['dislike'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['word'] = this.word;
    data['wordComplement'] = this.wordComplement;
    data['wordEn'] = this.wordEn;
    data['video'] = this.video;
    data['category'] = this.category;
    data['categoryEn'] = this.categoryEn;
    data['description'] = this.description;
    data['descriptionImage'] = this.descriptionImage;
    data['like'] = this.like;
    data['dislike'] = this.dislike;
    return data;
  }
}