class NewsArt{
  String imgurl;
  String newsHead;
  String newsdesc;
  String newsurl;
  String newscnt;

  NewsArt({
    required this.imgurl,
    required this.newsdesc,
    required this.newscnt,
    required this.newsHead,
    required this.newsurl
});


  static NewsArt fromAPItoAPP(Map<String, dynamic> article) {
    return NewsArt(
        imgurl: article["urlToImage"] ??
            "https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=",
        newscnt: article["content"] ?? "--",
        newsdesc: article["description"] ?? "--",
        newsHead: article["title"] ?? "--",
        newsurl: article["url"] ??
            "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }


  }

