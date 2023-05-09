class Message {
  int idFrom;
  int idTo;
  String timestamp;
  String content;

  Message({
    required this.idFrom,
    required this.idTo,
    required this.timestamp,
    required this.content,
  });
}
