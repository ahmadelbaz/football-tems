import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_teams/business_logic/cubit/teams_states.dart';

class TeamsCubit extends Cubit<TeamsState> {
  TeamsCubit() : super(TeamsInitialState());
}
