/// title : "Cupiditate dolorum sint sint expedita debitis."
/// description : "Quidem corrupti sit voluptate unde ut sapiente cumque dicta. Iste dolorem quia ea amet iste. Nulla et harum et perferendis asperiores. Autem aut animi aliquam occaecati distinctio quisquam autem facilis. Quidem harum quam."
/// image : "https://loremflickr.com/640/480/sports"
/// id : "1"

class Tip {
  Tip({
      String? title, 
      String? description, 
      String? image, 
      String? id,}){
    _title = title;
    _description = description;
    _image = image;
    _id = id;
}

  Tip.fromJson(dynamic json) {
    _title = json['title'];
    _description = json['description'];
    _image = json['image'];
    _id = json['id'];
  }
  String? _title;
  String? _description;
  String? _image;
  String? _id;
Tip copyWith({  String? title,
  String? description,
  String? image,
  String? id,
}) => Tip(  title: title ?? _title,
  description: description ?? _description,
  image: image ?? _image,
  id: id ?? _id,
);
  String? get title => _title;
  String? get description => _description;
  String? get image => _image;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['description'] = _description;
    map['image'] = _image;
    map['id'] = _id;
    return map;
  }

}