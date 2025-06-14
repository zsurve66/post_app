class PostModel {
  final int? id;
  final String title;
  final String body;

  PostModel({this.id, required this.title, required this.body});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json['id'],
        title: json['title'],
        body: json['body'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'body': body,
        'userId': 1, // Required by API
      };
}
