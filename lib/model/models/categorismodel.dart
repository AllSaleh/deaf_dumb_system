class CategoriseModel {
  String? catogry;
  String? categoryEn;
  int? count;

  CategoriseModel({this.catogry, this.categoryEn, this.count});

  CategoriseModel.fromJson(Map<String, dynamic> json) {
    catogry = json['catogry'];
    categoryEn = json['categoryEn'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catogry'] = this.catogry;
    data['categoryEn'] = this.categoryEn;
    data['count'] = this.count;
    return data;
  }
}