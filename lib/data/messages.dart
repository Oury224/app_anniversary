// data/messages.dart

class BirthdayMessage {
  final String author;
  final String text;
  final String background; // background image filename

  const BirthdayMessage({
    required this.author,
    required this.text,
    required this.background,
  });
}

// List of 21 generic birthday messages. Can't put the same as in the original code because of privacy.
// These are fictional and meant to be generic.
const List<BirthdayMessage> birthdayMessages = [
  // Author 1
  BirthdayMessage(author: "Author 1", text: "Text 1", background: "assets/images/bg_1.jpg"),
  BirthdayMessage(author: "Author 1", text: "Text 2", background: "assets/images/bg_1.jpg"),
  BirthdayMessage(author: "Author 1", text: "Text 3", background: "assets/images/bg_1.jpg"),
  BirthdayMessage(author: "Author 1", text: "Text 4", background: "assets/images/bg_1.jpg"),
  // Author 2
  BirthdayMessage(author: "Author 2", text: "Text 5", background: "assets/images/bg_2.jpg"),
  BirthdayMessage(author: "Author 2", text: "Text 6", background: "assets/images/bg_2.jpg"),
  BirthdayMessage(author: "Author 2", text: "Text 7", background: "assets/images/bg_2.jpg"),
  BirthdayMessage(author: "Author 2", text: "Text 8", background: "assets/images/bg_2.jpg"),
  // Author 3
  BirthdayMessage(author: "Author 3", text: "Text 9", background: "assets/images/bg_3.jpg"),
  BirthdayMessage(author: "Author 3", text: "Text 10", background: "assets/images/bg_3.jpg"),
  BirthdayMessage(author: "Author 3", text: "Text 11", background: "assets/images/bg_3.jpg"),
  BirthdayMessage(author: "Author 3", text: "Text 12", background: "assets/images/bg_3.jpg"),
  // Author 4
  BirthdayMessage(author: "Author 4", text: "Text 13", background: "assets/images/bg_4.jpg"),
  BirthdayMessage(author: "Author 4", text: "Text 14", background: "assets/images/bg_4.jpg"),
  BirthdayMessage(author: "Author 4", text: "Text 15", background: "assets/images/bg_4.jpg"),
  BirthdayMessage(author: "Author 4", text: "Text 16", background: "assets/images/bg_4.jpg"),
  // Author 5
  BirthdayMessage(author: "Author 5", text: "Text 17", background: "assets/images/bg_5.jpg"),
  BirthdayMessage(author: "Author 5", text: "Text 18", background: "assets/images/bg_5.jpg"),
  BirthdayMessage(author: "Author 5", text: "Text 19", background: "assets/images/bg_5.jpg"),
  BirthdayMessage(author: "Author 5", text: "Text 20", background: "assets/images/bg_5.jpg"),
  BirthdayMessage(author: "Author 5", text: "Text 21", background: "assets/images/bg_5.jpg"),
];
// This list can be expanded or modified as needed.
