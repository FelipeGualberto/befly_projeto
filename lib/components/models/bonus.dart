/// platform : "Nienow - Wehner"
/// discount : "466.00"
/// id : "1"

class Bonus {
  Bonus({
      String? platform, 
      String? discount, 
      String? id,}){
    _platform = platform;
    _discount = discount;
    _id = id;
}

  Bonus.fromJson(dynamic json) {
    _platform = json['platform'];
    _discount = json['discount'];
    _id = json['id'];
  }
  String? _platform;
  String? _discount;
  String? _id;
Bonus copyWith({  String? platform,
  String? discount,
  String? id,
}) => Bonus(  platform: platform ?? _platform,
  discount: discount ?? _discount,
  id: id ?? _id,
);
  String? get platform => _platform;
  String? get discount => _discount;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['platform'] = _platform;
    map['discount'] = _discount;
    map['id'] = _id;
    return map;
  }

}