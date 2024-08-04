/// name : "interior"
/// image : "https://loremflickr.com/640/480/sports"
/// id : "1"

class Sport {
  Sport({
      String? name, 
      String? image, 
      String? id,}){
    _name = name;
    _image = image;
    _id = id;
}

  Sport.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _id = json['id'];
  }
  String? _name;
  String? _image;
  String? _id;
Sport copyWith({  String? name,
  String? image,
  String? id,
}) => Sport(  name: name ?? _name,
  image: image ?? _image,
  id: id ?? _id,
);
  String? get name => _name;
  String? get image => _image;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['id'] = _id;
    return map;
  }

}