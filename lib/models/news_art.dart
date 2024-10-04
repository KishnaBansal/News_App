class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsCnt,
    required this.newsDesc,
    required this.newsHead,
    required this.newsUrl,
  });

  static NewsArt fromApitoApp(Map<String,dynamic> article) {
    return NewsArt(
      imgUrl: article["urlToImage"] ?? "https://img.freepik.com/premium-photo/city-newspaper-paper-photo_641503-288560.jpg?ga=GA1.1.1767101013.1719580198&semt=ais_hybrid",
      newsCnt: article["content"] ?? "--",
      newsDesc: article["description"] ?? "--",
      newsHead: article["title"] ?? "--",
      newsUrl: article["url"] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
    );
  }
}
