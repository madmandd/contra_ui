class Message {
  final String name;
  final String message;
  final String time;
  final bool isUser;

  Message(
      {required this.name,
      required this.message,
      required this.time,
      required this.isUser});
}

class Chat {
  final String name;
  final String message;
  final String time;
  final String count;

  Chat(
      {required this.name,
      required this.message,
      required this.time,
      required this.count});
}
