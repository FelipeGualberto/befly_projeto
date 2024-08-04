/// date : "2024-05-02T12:17:06.613Z"
/// team_a : "Fargo"
/// team_b : "Seattle"
/// team_a_score : 90729
/// team_b_score : 97016
/// 1xbet_odds_avg : 23266.25
/// betsafe_odds_avg : 74968.88
/// betsson_odds_avg : 56814.93
/// likes_count : 86800
/// stars_count : 24482
/// views_count : 4069
/// shares_count : 44189
/// channels : "Southeast Fresh far"
/// stadium : "Los Angeles"
/// referee : "Walter Hansen"
/// referee_avatar : "https://loremflickr.com/640/480/people"
/// referee_stats : "Voluptates magnam illum esse. Fugit cupiditate voluptatibus corrupti ea illo minus velit temporibus inventore. Recusandae dolorum nisi recusandae animi. Numquam assumenda iusto. Soluta minima at."
/// team_a_image : "https://loremflickr.com/640/480/sports"
/// team_b_image : "https://loremflickr.com/640/480/sports"
/// red_card_media : 81629.22
/// yellow_card_media : 86927.35
/// team_a_stats : "Commodi vel hic qui. Repellat dolores ad nam tempore totam. Ipsum laborum temporibus nihil tenetur accusamus."
/// team_b_stats : "Sint velit cum soluta a aspernatur pariatur non facilis aspernatur. Explicabo veritatis rem qui dignissimos quasi autem nobis sit rerum. Dolore fuga ab non. Maxime enim incidunt recusandae dolores. Fugiat dolorem corporis totam illo dolores reprehenderit eos ex suscipit. Libero dolor possimus."
/// id : "1"

class MatchModel {
  MatchModel({
      String? date, 
      String? teamA, 
      String? teamB, 
      num? teamAScore, 
      num? teamBScore, 
      num? xbetOddsAvg, 
      num? betsafeOddsAvg, 
      num? betssonOddsAvg, 
      num? likesCount, 
      num? starsCount, 
      num? viewsCount, 
      num? sharesCount, 
      String? channels, 
      String? stadium, 
      String? referee, 
      String? refereeAvatar, 
      String? refereeStats, 
      String? teamAImage, 
      String? teamBImage, 
      num? redCardMedia, 
      num? yellowCardMedia, 
      String? teamAStats, 
      String? teamBStats, 
      String? id,}){
    _date = date;
    _teamA = teamA;
    _teamB = teamB;
    _teamAScore = teamAScore;
    _teamBScore = teamBScore;
    _xbetOddsAvg = xbetOddsAvg;
    _betsafeOddsAvg = betsafeOddsAvg;
    _betssonOddsAvg = betssonOddsAvg;
    _likesCount = likesCount;
    _starsCount = starsCount;
    _viewsCount = viewsCount;
    _sharesCount = sharesCount;
    _channels = channels;
    _stadium = stadium;
    _referee = referee;
    _refereeAvatar = refereeAvatar;
    _refereeStats = refereeStats;
    _teamAImage = teamAImage;
    _teamBImage = teamBImage;
    _redCardMedia = redCardMedia;
    _yellowCardMedia = yellowCardMedia;
    _teamAStats = teamAStats;
    _teamBStats = teamBStats;
    _id = id;
}

  MatchModel.fromJson(dynamic json) {
    _date = json['date'];
    _teamA = json['team_a'];
    _teamB = json['team_b'];
    _teamAScore = json['team_a_score'];
    _teamBScore = json['team_b_score'];
    _xbetOddsAvg = json['1xbet_odds_avg'];
    _betsafeOddsAvg = json['betsafe_odds_avg'];
    _betssonOddsAvg = json['betsson_odds_avg'];
    _likesCount = json['likes_count'];
    _starsCount = json['stars_count'];
    _viewsCount = json['views_count'];
    _sharesCount = json['shares_count'];
    _channels = json['channels'];
    _stadium = json['stadium'];
    _referee = json['referee'];
    _refereeAvatar = json['referee_avatar'];
    _refereeStats = json['referee_stats'];
    _teamAImage = json['team_a_image'];
    _teamBImage = json['team_b_image'];
    _redCardMedia = json['red_card_media'];
    _yellowCardMedia = json['yellow_card_media'];
    _teamAStats = json['team_a_stats'];
    _teamBStats = json['team_b_stats'];
    _id = json['id'];
  }
  String? _date;
  String? _teamA;
  String? _teamB;
  num? _teamAScore;
  num? _teamBScore;
  num? _xbetOddsAvg;
  num? _betsafeOddsAvg;
  num? _betssonOddsAvg;
  num? _likesCount;
  num? _starsCount;
  num? _viewsCount;
  num? _sharesCount;
  String? _channels;
  String? _stadium;
  String? _referee;
  String? _refereeAvatar;
  String? _refereeStats;
  String? _teamAImage;
  String? _teamBImage;
  num? _redCardMedia;
  num? _yellowCardMedia;
  String? _teamAStats;
  String? _teamBStats;
  String? _id;
MatchModel copyWith({  String? date,
  String? teamA,
  String? teamB,
  num? teamAScore,
  num? teamBScore,
  num? xbetOddsAvg,
  num? betsafeOddsAvg,
  num? betssonOddsAvg,
  num? likesCount,
  num? starsCount,
  num? viewsCount,
  num? sharesCount,
  String? channels,
  String? stadium,
  String? referee,
  String? refereeAvatar,
  String? refereeStats,
  String? teamAImage,
  String? teamBImage,
  num? redCardMedia,
  num? yellowCardMedia,
  String? teamAStats,
  String? teamBStats,
  String? id,
}) => MatchModel(  date: date ?? _date,
  teamA: teamA ?? _teamA,
  teamB: teamB ?? _teamB,
  teamAScore: teamAScore ?? _teamAScore,
  teamBScore: teamBScore ?? _teamBScore,
  xbetOddsAvg: xbetOddsAvg ?? _xbetOddsAvg,
  betsafeOddsAvg: betsafeOddsAvg ?? _betsafeOddsAvg,
  betssonOddsAvg: betssonOddsAvg ?? _betssonOddsAvg,
  likesCount: likesCount ?? _likesCount,
  starsCount: starsCount ?? _starsCount,
  viewsCount: viewsCount ?? _viewsCount,
  sharesCount: sharesCount ?? _sharesCount,
  channels: channels ?? _channels,
  stadium: stadium ?? _stadium,
  referee: referee ?? _referee,
  refereeAvatar: refereeAvatar ?? _refereeAvatar,
  refereeStats: refereeStats ?? _refereeStats,
  teamAImage: teamAImage ?? _teamAImage,
  teamBImage: teamBImage ?? _teamBImage,
  redCardMedia: redCardMedia ?? _redCardMedia,
  yellowCardMedia: yellowCardMedia ?? _yellowCardMedia,
  teamAStats: teamAStats ?? _teamAStats,
  teamBStats: teamBStats ?? _teamBStats,
  id: id ?? _id,
);
  String? get date => _date;
  String? get teamA => _teamA;
  String? get teamB => _teamB;
  num? get teamAScore => _teamAScore;
  num? get teamBScore => _teamBScore;
  num? get xbetOddsAvg => _xbetOddsAvg;
  num? get betsafeOddsAvg => _betsafeOddsAvg;
  num? get betssonOddsAvg => _betssonOddsAvg;
  num? get likesCount => _likesCount;
  num? get starsCount => _starsCount;
  num? get viewsCount => _viewsCount;
  num? get sharesCount => _sharesCount;
  String? get channels => _channels;
  String? get stadium => _stadium;
  String? get referee => _referee;
  String? get refereeAvatar => _refereeAvatar;
  String? get refereeStats => _refereeStats;
  String? get teamAImage => _teamAImage;
  String? get teamBImage => _teamBImage;
  num? get redCardMedia => _redCardMedia;
  num? get yellowCardMedia => _yellowCardMedia;
  String? get teamAStats => _teamAStats;
  String? get teamBStats => _teamBStats;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['team_a'] = _teamA;
    map['team_b'] = _teamB;
    map['team_a_score'] = _teamAScore;
    map['team_b_score'] = _teamBScore;
    map['1xbet_odds_avg'] = _xbetOddsAvg;
    map['betsafe_odds_avg'] = _betsafeOddsAvg;
    map['betsson_odds_avg'] = _betssonOddsAvg;
    map['likes_count'] = _likesCount;
    map['stars_count'] = _starsCount;
    map['views_count'] = _viewsCount;
    map['shares_count'] = _sharesCount;
    map['channels'] = _channels;
    map['stadium'] = _stadium;
    map['referee'] = _referee;
    map['referee_avatar'] = _refereeAvatar;
    map['referee_stats'] = _refereeStats;
    map['team_a_image'] = _teamAImage;
    map['team_b_image'] = _teamBImage;
    map['red_card_media'] = _redCardMedia;
    map['yellow_card_media'] = _yellowCardMedia;
    map['team_a_stats'] = _teamAStats;
    map['team_b_stats'] = _teamBStats;
    map['id'] = _id;
    return map;
  }

}