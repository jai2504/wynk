import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wynk/data/reqdata.dart';
import 'package:wynk/screens/player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool play = false;
  Widget returnPlayer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Player()));
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.black38),
        height: 65,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              height: 50,
              width: 50,
              child: Image.asset(
                imgList.elementAt(2),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 7),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Teri Ban Jaungi (Reprise) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Tulsi Kumar, T-Series",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Icon(
                play ? Icons.pause : Icons.play_arrow,
                size: 45,
              ),
              onTap: () {
                setState(() {
                  play = !play;
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Widget returnCarousel() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.25,
                initialPage: 0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: false),
            items: imgList.map((img) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      img,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white38,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white38,
                    ),
                    Text(
                      'Search Music',
                      style: TextStyle(color: Colors.white38),
                    ),
                    Icon(
                      Icons.mic,
                      color: Colors.white38,
                    ),
                    VerticalDivider(),
                    Icon(
                      Icons.call,
                      color: Colors.white38,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Wynk Top Picks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              returnCarousel(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            returnPlayer(),
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.black12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Colors.white38,
                  ),
                  Icon(Icons.music_note, color: Colors.white38),
                  Icon(
                    Icons.settings_input_antenna,
                    color: Colors.white38,
                  ),
                  Icon(
                    Icons.update,
                    color: Colors.white38,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white38,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
