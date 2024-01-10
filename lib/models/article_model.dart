// ignore_for_file: non_constant_identifier_names

import 'package:news_app/models/source_model.dart';

class Article {
  Source source;
  String author, title, desc, url, urlToImage, pub, content;
  Article(this.source, this.author, this.title, this.desc, this.url,
      this.urlToImage, this.pub, this.content);

  factory Article.FromJSON(Map<String, dynamic> json) {
    return Article(
        Source.fromJSON(json['source']),
        json['author'] ?? "",
        json['title'],
        json['description'],
        json['url'],
        json['urlToImage'] ?? "",
        json['publishedAt'],
        json['content']);
  }
}
