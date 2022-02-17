import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, required this.article}) : super(key: key);
  Article article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            article.title,
          ),
          backgroundColor: Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
            article.desc,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}
