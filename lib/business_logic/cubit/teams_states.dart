import 'package:football_teams/data/models/team_model.dart';

abstract class TeamsState {}

class TeamsInitialState extends TeamsState {}

class TeamsLoadedState extends TeamsState {
  List<Team> teams;

  TeamsLoadedState(this.teams);
}
