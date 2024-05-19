import 'package:football_teams/env.dart';

class AppConsts {
  static String apiToken = Env.token;
  static String teamId = '0';
  static String teamsAPIKey =
      "https://api.sportmonks.com/v3/football/teams?api_token=$apiToken";
  static String teamPlayersAPIKey =
      "https://api.sportmonks.com/v3/football/teams/$teamId?api_token=$apiToken&includes=players";
}
