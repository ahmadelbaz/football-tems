import 'package:dio/dio.dart';
import 'package:football_teams/presentation/resources/consts.dart';

class TeamsWebServices {
  final Dio _dio = Dio();

  TeamsWebServices() {
    _configureDio();
  }

  _configureDio() {
    _dio.options = BaseOptions(
      baseUrl: AppConsts.teamsAPIKey,
      receiveTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
    );
  }

  Future<List<dynamic>> getTeams() async {
    try {
      final Response response = await _dio.get('');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
