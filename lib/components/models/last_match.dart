/// date : "2023-04-19T15:47:43.192Z"
/// team_a_won : 9631
/// team_b_won : 14581
/// draw : 447
/// championship_name : "Dominica"
/// championshio_image : "https://loremflickr.com/640/480/sports"
/// id : "1"
/// matchId : "1"

class LastMatch {
  LastMatch({
      String? date, 
      num? teamAWon, 
      num? teamBWon, 
      num? draw, 
      String? championshipName, 
      String? championshioImage, 
      String? id, 
      String? matchId,}){
    _date = date;
    _teamAWon = teamAWon;
    _teamBWon = teamBWon;
    _draw = draw;
    _championshipName = championshipName;
    _championshioImage = championshioImage;
    _id = id;
    _matchId = matchId;
}

  LastMatch.fromJson(dynamic json) {
    _date = json['date'];
    _teamAWon = json['team_a_won'];
    _teamBWon = json['team_b_won'];
    _draw = json['draw'];
    _championshipName = json['championship_name'];
    _championshioImage = json['championshio_image'];
    _id = json['id'];
    _matchId = json['matchId'];
  }
  String? _date;
  num? _teamAWon;
  num? _teamBWon;
  num? _draw;
  String? _championshipName;
  String? _championshioImage;
  String? _id;
  String? _matchId;
LastMatch copyWith({  String? date,
  num? teamAWon,
  num? teamBWon,
  num? draw,
  String? championshipName,
  String? championshioImage,
  String? id,
  String? matchId,
}) => LastMatch(  date: date ?? _date,
  teamAWon: teamAWon ?? _teamAWon,
  teamBWon: teamBWon ?? _teamBWon,
  draw: draw ?? _draw,
  championshipName: championshipName ?? _championshipName,
  championshioImage: championshioImage ?? _championshioImage,
  id: id ?? _id,
  matchId: matchId ?? _matchId,
);
  String? get date => _date;
  num? get teamAWon => _teamAWon;
  num? get teamBWon => _teamBWon;
  num? get draw => _draw;
  String? get championshipName => _championshipName;
  String? get championshioImage => _championshioImage;
  String? get id => _id;
  String? get matchId => _matchId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['team_a_won'] = _teamAWon;
    map['team_b_won'] = _teamBWon;
    map['draw'] = _draw;
    map['championship_name'] = _championshipName;
    map['championshio_image'] = _championshioImage;
    map['id'] = _id;
    map['matchId'] = _matchId;
    return map;
  }

}