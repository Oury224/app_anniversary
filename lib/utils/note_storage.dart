import 'package:shared_preferences/shared_preferences.dart';

class NoteStorage {
  static const String notesKey = 'my_notes';

  /// Loads the list of notes from local storage
  static Future<List<String>> loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(notesKey) ?? [];
  }

  /// Saves the list of notes to local storage
  static Future<void> saveNotes(List<String> notes) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(notesKey, notes);
  }
}
