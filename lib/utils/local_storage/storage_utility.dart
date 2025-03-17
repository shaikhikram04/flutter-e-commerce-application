import 'package:get_storage/get_storage.dart';

class ILocalStorage {
  static final ILocalStorage _instance = ILocalStorage._internal();

  factory ILocalStorage() {
    return _instance;
  }

  ILocalStorage._internal();

  final _storage = GetStorage();

  //* Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //* Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //* Generic method to remove data
  Future<void> removeData(String key) {
    return _storage.remove(key);
  }

  //* Generic method to clear data
  Future<void> clearAll() {
    return _storage.erase();
  }
}
