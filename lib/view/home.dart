import 'package:flutter/material.dart';
import 'package:news_dh/controller/fetch_news.dart';
import 'package:news_dh/models/news_art.dart';
import 'package:news_dh/view/widgets/news_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          setState(() {});
          GetNews();
        },
        itemBuilder: (context, index) {
          return NewsContainer(
            imageUrl: newsArt.imgUrl,
            newsCnt: newsArt.newsCnt,
            newsHead: newsArt.newsHead,
            newsDesc: newsArt.newsDesc,
            newsUrl: newsArt.newsUrl,
          );
        },
      ),
    );
  }
}
