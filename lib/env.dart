import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
@Envied(path: '.env', useConstantCase: true)
abstract class Env {
  @EnviedField(varName: 'TOKEN', obfuscate: true)
  static final String token = _Env.token;
}
