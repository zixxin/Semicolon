class Content {
  final String title;
  final String keyword;
  final String board;
  final String content;
  bool imp;

  Content({
    required this.title,
    required this.keyword, //묶기
    required this.board,
    required this.content,
    required this.imp,
  });
}
