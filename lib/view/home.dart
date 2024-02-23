// TODO Implement this library.
import 'package:equit/FetchNews.dart';
import 'package:equit/newsArt.dart';
import 'package:equit/view/Widgets/NewsContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
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
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading ? Center(child: CircularProgressIndicator(),) : NewsContainer(imgurl: newsArt.imgurl,
                newscnt: newsArt.newscnt,
                newsHead: newsArt.newsHead,
                newsdesc: newsArt.newsdesc,
                newsurl: newsArt.newsurl);
          }),
    );
  }
}

/*import 'package:equit/FetchNews.dart';
import 'package:equit/newsArt.dart';
import 'package:equit/view/Widgets/NewsContainer.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen ({Key? key}): super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //bool isloading = true;
  late NewsArt newsArt;

GetNews()async{
  newsArt = await FetchNews.fetchNews();
  setState(() {
    //isloading = false;

  });
}
  @override
  void initState() {
    GetNews();
    //FetchNews.fetchNews();
    super.initState();
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(


      body: PageView.builder (
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            setState(() {
              //isloading = true;
            });
            GetNews();
          },
          itemBuilder:(context, index){
            return //isloading ? Center(child: CircularProgressIndicator(),):
            NewsContainer(imgurl: newsArt.imgurl,
              newscnt: newsArt.newscnt,
              newsHead: newsArt.newsHead,
              newsdesc: newsArt.newsdesc,


              newsurl: newsArt.newsurl);
         }),
    );
  }
}*/



