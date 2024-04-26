class Team {
  int? teamId;
  int? sportId;
  int? countryId;
  int? venueId;
  String? gender;
  String? name;
  String? shortCode;
  String? imagePath;
  int? founded;
  String? type;
  bool? placeholder;
  String? lastPlayedAt;

  Team(
      {this.teamId,
      this.sportId,
      this.countryId,
      this.venueId,
      this.gender,
      this.name,
      this.shortCode,
      this.imagePath,
      this.founded,
      this.type,
      this.placeholder,
      this.lastPlayedAt});

  Team.fromJson(Map<String, dynamic> json) {
    teamId = json['id'];
    sportId = json['sport_id'];
    countryId = json['country_id'];
    venueId = json['venue_id'];
    gender = json['gender'];
    name = json['name'];
    shortCode = json['short_code'];
    imagePath = json['image_path'];
    founded = json['founded'];
    type = json['type'];
    placeholder = json['placeholder'];
    lastPlayedAt = json['last_played_at'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> team = <String, dynamic>{};
  //   team['id'] = teamId;
  //   team['sport_id'] = sportId;
  //   team['country_id'] = countryId;
  //   team['venue_id'] = venueId;
  //   team['gender'] = gender;
  //   team['name'] = name;
  //   team['short_code'] = shortCode;
  //   team['image_path'] = imagePath;
  //   team['founded'] = founded;
  //   team['type'] = type;
  //   team['placeholder'] = placeholder;
  //   team['last_played_at'] = lastPlayedAt;
  //   return team;
  // }
}
