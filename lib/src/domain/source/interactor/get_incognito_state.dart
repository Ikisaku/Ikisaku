import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikisaku/src/domain/base/base_preferences.dart';

final getIncognitoStateProvider = Provider<GetIncognitoState>((ref) {
  final preferences = ref.watch(basePreferencesProvider);
  return GetIncognitoState(preferences);
});

class GetIncognitoState {
  final BasePreferences _preferences;

  GetIncognitoState(this._preferences);

  Future<bool> getState(int? sourceId) async {
    // TODO: Implementar lógica específica por fuente
    return _preferences.incognitoMode.get();
  }

  Stream<bool> subscribe(int? sourceId) {
    // TODO: Implementar stream de cambios específico por fuente
    return _preferences.incognitoMode.changes();
  }
}
