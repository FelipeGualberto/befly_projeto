/// date : "2023-12-02T10:25:36.378Z"
/// name : "Dr. Becky Buckridge"
/// avatar : "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/194.jpg"
/// bet_score : 78616.59
/// stat : "Dicta unde minima nihil assumenda nulla accusamus atque."
/// id : "1"
/// matchId : "1"

class Bet {
  Bet({
      String? date, 
      String? name, 
      String? avatar, 
      num? betScore, 
      String? stat, 
      String? id, 
      String? matchId,}){
    _date = date;
    _name = name;
    _avatar = avatar;
    _betScore = betScore;
    _stat = stat;
    _id = id;
    _matchId = matchId;
}

  Bet.fromJson(dynamic json) {
    _date = json['date'];
    _name = json['name'];
    _avatar = json['avatar'];
    _betScore = json['bet_score'];
    _stat = json['stat'];
    _id = json['id'];
    _matchId = json['matchId'];
  }
  String? _date;
  String? _name;
  String? _avatar;
  num? _betScore;
  String? _stat;
  String? _id;
  String? _matchId;
Bet copyWith({  String? date,
  String? name,
  String? avatar,
  num? betScore,
  String? stat,
  String? id,
  String? matchId,
}) => Bet(  date: date ?? _date,
  name: name ?? _name,
  avatar: avatar ?? _avatar,
  betScore: betScore ?? _betScore,
  stat: stat ?? _stat,
  id: id ?? _id,
  matchId: matchId ?? _matchId,
);
  String? get date => _date;
  String? get name => _name;
  String? get avatar => _avatar;
  num? get betScore => _betScore;
  String? get stat => _stat;
  String? get id => _id;
  String? get matchId => _matchId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['name'] = _name;
    map['avatar'] = _avatar;
    map['bet_score'] = _betScore;
    map['stat'] = _stat;
    map['id'] = _id;
    map['matchId'] = _matchId;
    return map;
  }

}