import 'package:equatable/equatable.dart';

import 'article.dart';

class NewsModel extends Equatable {
  final String? status;
  final List<Article>? articles;

  const NewsModel({this.status, this.articles});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        status: json['status'] as String?,
        articles: (json['articles'] as List<dynamic>?)
            ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'articles': articles?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [status, articles];
}
