import "package:flutter/material.dart";
import 'package:equit/view/detail_view.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  //const NewsContainer({super.key});
  String imgurl;
  String newsHead;
  String newsdesc;
  String newsurl;
  String newscnt;

  NewsContainer({super.key,
    required this.imgurl,
    required this.newsdesc,
    required this.newscnt,
    required this.newsHead,
    required this.newsurl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //children: [
          //widget(
          children: [
            FadeInImage.assetNetwork(
                height: 400,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                fit: BoxFit.cover,
                placeholder: "assets/img/placeholder.jfif",
                image: imgurl),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(newsHead, style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(newscnt,
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    SizedBox(height: 10),
                    Text(newsdesc, style: TextStyle(fontSize: 16))

                  ]
              ),
            ),

            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(onPressed: () {
                    print("Going To $newsurl");
                  },
                      child: Text("Read More")),
                ),
              ],
            ),
            SizedBox(height: 10,) // ElevatedE
          ],
        )
    );
  }
}