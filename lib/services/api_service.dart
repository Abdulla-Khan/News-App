import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart';
import 'package:news_app/models/article_model.dart';

class ApiService {
  final endPoint =
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=950b3561deb044588e7b33172984575e';
  Future<List<Article>> getArticle() async {
    Response res = await (get(Uri.parse(endPoint)));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.FromJSON(item)).toList();
      return articles;
    } else {
      throw ("Can't get article");
    }
  }
}
