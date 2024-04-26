import 'package:football_teams/env.dart';

class AppConsts {
  static String apiToken = Env.token;
  static String apiKey =
      "https://api.sportmonks.com/v3/football/teams?api_token=$apiToken=players";
}
