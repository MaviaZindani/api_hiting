class Dataofapi {
  String? sId;
  String? name;
  int? age;
  String? colour;

  Dataofapi({this.sId, this.name, this.age, this.colour});

  Dataofapi.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    age = json['age'];
    colour = json['colour'];
  }
}