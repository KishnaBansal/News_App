import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:news_dh/models/news_art.dart';

List sourcesId = [
  "abc-news",
  "bbc-news",
  "bbc-sport",
  "business-insider",
  "engadget",
  "entertainment-weekly",
  "espn",
  "espn-cric-info",
  "financial-post",
  "fox-news",
  "fox-sports",
  "globo",
  "google-news",
  "google-news-in",
  "medical-news-today",
  "national-geographic",
  "news24",
  "new-scientist",
  "new-york-magazine",
  "next-big-future",
  "techcrunch",
  "techradar",
  "the-hindu",
  "the-wall-street-journal",
  "the-washington-times",
  "time",
  "usa-today",
];

class FetchNews {
  static Future<NewsArt> fetchNews() async {
    // final _random = new Random();
    // var element = sourcesId[_random.nextInt(sourcesId.length)];
    // print(element);
    var randomItem = (sourcesId..shuffle()).first;
    print(randomItem);
    Response response = await get(
      Uri.parse(
          "https://newsapi.org/v2/top-headlines?sources=$randomItem&apiKey=3dbf5e164aee40b6a5e31bb4f5cba558"),
    );
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    // print(articles);
    print("********************************************************");
    var randomArticle = (articles..shuffle()).first;
    print(randomArticle);
    print("********************************************************");

    return NewsArt.fromApitoApp(randomArticle);
  }
}
