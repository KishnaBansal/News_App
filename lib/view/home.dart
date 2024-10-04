import 'package:flutter/material.dart';
import 'package:news_dh/controller/fetch_news.dart';
import 'package:news_dh/view/widgets/news_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: 8),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          FetchNews.fetchNews();
          return NewsContainer(
              imageUrl:
                  "https://img.etimg.com/thumb/width-1200,height-1200,imgsize-52228,resizemode-75,msid-113136843/industry/telecom/telecom-news/india-pips-us-to-become-2nd-largest-5g-smartphone-market.jpg",
              newsCnt:
                  "India has overtaken the US to become the world's second-biggest 5G handset market for the first time, behind China, a report has mentioned.Global 5G handset shipments grew 20 per cent (year-on-year) in the first half of 2024, according to the Counterpoint Research. Apple led the 5G handset shipments, accounting for more than 25 per cent share.",
              newsHead: "5G Service is available in India",
              newsDesc:
                  "India Now World's 2nd Largest 5G Mobile Market, Surges Past US",
              newsUrl:
                  "https://www.ndtv.com/world-news/india-becomes-worlds-2nd-largest-5g-mobile-market-surges-past-us-apple-tops-report-6503573");
        },
      ),
    );
  }
}
