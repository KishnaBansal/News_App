import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imageUrl;
  String newsHead;
  String newsDesc;
  String newsUrl;
  String newsCnt;
  NewsContainer({
    super.key,
    required this.imageUrl,
    required this.newsDesc,
    required this.newsHead,
    required this.newsUrl,
    required this.newsCnt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  newsHead,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  newsDesc,
                  style: TextStyle(fontSize: 12,color: Colors.black38),
                ),
                SizedBox(height: 10),
                Text(
                  newsCnt,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print("Going to $newsUrl");
                  },
                  child: Text("Read more"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
