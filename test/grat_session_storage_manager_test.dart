import 'package:grat_session_storage_manager/grat_session_storage_manager.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
      GratSessionStorageManager s = GratSessionStorageManager();
      expect(s.isRedirectLoginValidate(), isFalse);
    });
  });
}
