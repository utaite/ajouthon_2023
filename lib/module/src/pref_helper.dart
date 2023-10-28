import 'package:shared_preferences/shared_preferences.dart';

enum PrefType {
  name,
}

final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

Future<bool> clear() async => (await _pref).clear();

Future<void> reload() async => (await _pref).reload();

Future<bool> getPrefBool(PrefType type) async => (await _pref).getBool(type.name) ?? false;

Future<bool> setPrefBool(PrefType type, bool value) async => (await _pref).setBool(type.name, value);

Future<Iterable<bool>> setPrefsBool(Iterable<PrefType> types, bool value) async => Future.wait([
      ...types.map((x) async => setPrefBool(x, value)),
    ]);

Future<int> getPrefInt(PrefType type) async => (await _pref).getInt(type.name) ?? -1;

Future<bool> setPrefInt(PrefType type, int value) async => (await _pref).setInt(type.name, value);

Future<Iterable<bool>> setPrefsInt(Iterable<PrefType> types, int value) async => Future.wait([
      ...types.map((x) async => setPrefInt(x, value)),
    ]);

Future<String> getPrefString(PrefType type) async => (await _pref).getString(type.name) ?? '';

Future<bool> setPrefString(PrefType type, Object value) async => (await _pref).setString(type.name, value.toString());

Future<Iterable<bool>> setPrefsString(Iterable<PrefType> types, Object value) async => Future.wait([
      ...types.map((x) async => setPrefString(x, value)),
    ]);

Future<List<String>> getPrefStringList(PrefType type) async => (await _pref).getStringList(type.name) ?? const [];

Future<bool> setPrefStringList(PrefType type, Iterable<dynamic> value) async => (await _pref).setStringList(type.name, [
      ...value.map((x) => x.toString()),
    ]);

Future<bool> removePref(PrefType type) async => (await _pref).remove(type.name);

Future<List<bool>> removePrefs(Iterable<PrefType> types) async => Future.wait([
      ...types.map((x) async => removePref(x)),
    ]);
