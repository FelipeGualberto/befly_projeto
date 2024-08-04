/// createdAt : "2023-12-01T10:13:33.803Z"
/// name : "Thailand"
/// image : "https://loremflickr.com/640/480/sports"
/// id : "1"

class Championship {
  Championship({
      String? createdAt, 
      String? name, 
      String? image, 
      String? id,}){
    _createdAt = createdAt;
    _name = name;
    _image = image;
    _id = id;
}

  Championship.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _image = json['image'];
    _id = json['id'];
  }
  String? _createdAt;
  String? _name;
  String? _image;
  String? _id;
Championship copyWith({  String? createdAt,
  String? name,
  String? image,
  String? id,
}) => Championship(  createdAt: createdAt ?? _createdAt,
  name: name ?? _name,
  image: image ?? _image,
  id: id ?? _id,
);
  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get image => _image;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['image'] = _image;
    map['id'] = _id;
    return map;
  }

}