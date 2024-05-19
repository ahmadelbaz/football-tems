import 'package:football_teams/data/models/team_model.dart';
import 'package:football_teams/data/web_services/teams_web_services.dart';

class TeamsRepo {
  final TeamsWebServices teamsWebServices;

  TeamsRepo(this.teamsWebServices);

  Future<List<Team>> getTeams() async {
    final teams = await teamsWebServices.getTeams();

    return teams.map((team) => Team.fromJson(team)).toList();
  }
}
