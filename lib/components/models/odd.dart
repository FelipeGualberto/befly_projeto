/// data : "2023-12-02T11:44:01.803Z"
/// team_a_1xbet_odd : 73026.59
/// team_a_betsafe_odd : 32394.43
/// team_a_betsson_odd : 32871.87
/// team_b_1xbet_odd : 557.61
/// team_b_betsafe_odd : 40409.69
/// team_b_betsson_odd : 58837.22
/// draw_1xbet_odd : 67160.14
/// draw_betsafe_odd : 99167.98
/// draw_betsson_odd : 7012.42
/// id : "1"
/// matchId : "1"

class Odd {
  Odd({
      String? data, 
      num? teamA1xbetOdd, 
      num? teamABetsafeOdd, 
      num? teamABetssonOdd, 
      num? teamB1xbetOdd, 
      num? teamBBetsafeOdd, 
      num? teamBBetssonOdd, 
      num? draw1xbetOdd, 
      num? drawBetsafeOdd, 
      num? drawBetssonOdd, 
      String? id, 
      String? matchId,}){
    _data = data;
    _teamA1xbetOdd = teamA1xbetOdd;
    _teamABetsafeOdd = teamABetsafeOdd;
    _teamABetssonOdd = teamABetssonOdd;
    _teamB1xbetOdd = teamB1xbetOdd;
    _teamBBetsafeOdd = teamBBetsafeOdd;
    _teamBBetssonOdd = teamBBetssonOdd;
    _draw1xbetOdd = draw1xbetOdd;
    _drawBetsafeOdd = drawBetsafeOdd;
    _drawBetssonOdd = drawBetssonOdd;
    _id = id;
    _matchId = matchId;
}

  Odd.fromJson(dynamic json) {
    _data = json['data'];
    _teamA1xbetOdd = json['team_a_1xbet_odd'];
    _teamABetsafeOdd = json['team_a_betsafe_odd'];
    _teamABetssonOdd = json['team_a_betsson_odd'];
    _teamB1xbetOdd = json['team_b_1xbet_odd'];
    _teamBBetsafeOdd = json['team_b_betsafe_odd'];
    _teamBBetssonOdd = json['team_b_betsson_odd'];
    _draw1xbetOdd = json['draw_1xbet_odd'];
    _drawBetsafeOdd = json['draw_betsafe_odd'];
    _drawBetssonOdd = json['draw_betsson_odd'];
    _id = json['id'];
    _matchId = json['matchId'];
  }
  String? _data;
  num? _teamA1xbetOdd;
  num? _teamABetsafeOdd;
  num? _teamABetssonOdd;
  num? _teamB1xbetOdd;
  num? _teamBBetsafeOdd;
  num? _teamBBetssonOdd;
  num? _draw1xbetOdd;
  num? _drawBetsafeOdd;
  num? _drawBetssonOdd;
  String? _id;
  String? _matchId;
Odd copyWith({  String? data,
  num? teamA1xbetOdd,
  num? teamABetsafeOdd,
  num? teamABetssonOdd,
  num? teamB1xbetOdd,
  num? teamBBetsafeOdd,
  num? teamBBetssonOdd,
  num? draw1xbetOdd,
  num? drawBetsafeOdd,
  num? drawBetssonOdd,
  String? id,
  String? matchId,
}) => Odd(  data: data ?? _data,
  teamA1xbetOdd: teamA1xbetOdd ?? _teamA1xbetOdd,
  teamABetsafeOdd: teamABetsafeOdd ?? _teamABetsafeOdd,
  teamABetssonOdd: teamABetssonOdd ?? _teamABetssonOdd,
  teamB1xbetOdd: teamB1xbetOdd ?? _teamB1xbetOdd,
  teamBBetsafeOdd: teamBBetsafeOdd ?? _teamBBetsafeOdd,
  teamBBetssonOdd: teamBBetssonOdd ?? _teamBBetssonOdd,
  draw1xbetOdd: draw1xbetOdd ?? _draw1xbetOdd,
  drawBetsafeOdd: drawBetsafeOdd ?? _drawBetsafeOdd,
  drawBetssonOdd: drawBetssonOdd ?? _drawBetssonOdd,
  id: id ?? _id,
  matchId: matchId ?? _matchId,
);
  String? get data => _data;
  num? get teamA1xbetOdd => _teamA1xbetOdd;
  num? get teamABetsafeOdd => _teamABetsafeOdd;
  num? get teamABetssonOdd => _teamABetssonOdd;
  num? get teamB1xbetOdd => _teamB1xbetOdd;
  num? get teamBBetsafeOdd => _teamBBetsafeOdd;
  num? get teamBBetssonOdd => _teamBBetssonOdd;
  num? get draw1xbetOdd => _draw1xbetOdd;
  num? get drawBetsafeOdd => _drawBetsafeOdd;
  num? get drawBetssonOdd => _drawBetssonOdd;
  String? get id => _id;
  String? get matchId => _matchId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = _data;
    map['team_a_1xbet_odd'] = _teamA1xbetOdd;
    map['team_a_betsafe_odd'] = _teamABetsafeOdd;
    map['team_a_betsson_odd'] = _teamABetssonOdd;
    map['team_b_1xbet_odd'] = _teamB1xbetOdd;
    map['team_b_betsafe_odd'] = _teamBBetsafeOdd;
    map['team_b_betsson_odd'] = _teamBBetssonOdd;
    map['draw_1xbet_odd'] = _draw1xbetOdd;
    map['draw_betsafe_odd'] = _drawBetsafeOdd;
    map['draw_betsson_odd'] = _drawBetssonOdd;
    map['id'] = _id;
    map['matchId'] = _matchId;
    return map;
  }

}