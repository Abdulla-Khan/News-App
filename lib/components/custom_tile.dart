import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/pages/detail_page.dart';

Widget customTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (_) => DetailPage(article: article))),
    child: Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 8),
          Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                article.source.name,
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 8),
          Text(
            article.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    ),
  );
}
