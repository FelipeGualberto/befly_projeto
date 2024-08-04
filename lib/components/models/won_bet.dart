/// user : "Alfred Reilly"
/// user_avatar : "https://loremflickr.com/640/480/people"
/// platform : "platform 1"
/// score : 35691.31
/// id : "1"

class WonBet {
  WonBet({
      String? user, 
      String? userAvatar, 
      String? platform, 
      num? score, 
      String? id,}){
    _user = user;
    _userAvatar = userAvatar;
    _platform = platform;
    _score = score;
    _id = id;
}

  WonBet.fromJson(dynamic json) {
    _user = json['user'];
    _userAvatar = json['user_avatar'];
    _platform = json['platform'];
    _score = json['score'];
    _id = json['id'];
  }
  String? _user;
  String? _userAvatar;
  String? _platform;
  num? _score;
  String? _id;
WonBet copyWith({  String? user,
  String? userAvatar,
  String? platform,
  num? score,
  String? id,
}) => WonBet(  user: user ?? _user,
  userAvatar: userAvatar ?? _userAvatar,
  platform: platform ?? _platform,
  score: score ?? _score,
  id: id ?? _id,
);
  String? get user => _user;
  String? get userAvatar => _userAvatar;
  String? get platform => _platform;
  num? get score => _score;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user'] = _user;
    map['user_avatar'] = _userAvatar;
    map['platform'] = _platform;
    map['score'] = _score;
    map['id'] = _id;
    return map;
  }

}