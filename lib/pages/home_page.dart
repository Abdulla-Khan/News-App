import 'package:flutter/material.dart';
import 'package:news_app/components/custom_tile.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/api_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News App',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapchot) {
          if (snapchot.hasData) {
            List<Article>? articles = snapchot.data;
            return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: articles!.length,
                itemBuilder: (context, index) {
                  return customTile(articles[index], context);
                });
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
