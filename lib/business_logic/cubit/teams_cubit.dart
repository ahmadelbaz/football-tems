import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_teams/business_logic/cubit/teams_states.dart';
import 'package:football_teams/data/models/team_model.dart';
import 'package:football_teams/data/repositries/teams_repo.dart';

class TeamsCubit extends Cubit<TeamsState> {
  TeamsCubit(this.teamsRepo) : super(TeamsInitialState());

  final TeamsRepo teamsRepo;

  late List<Team> teams;

  List<Team> getAllTeams() {
    teamsRepo.getTeams().then((teams) {
      emit(TeamsLoadedState(teams));
      this.teams = teams;
    });
    return teams;
  }
}
