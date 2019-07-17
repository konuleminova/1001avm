import 'package:avm1001/constants.dart';
import 'package:avm1001/item/list_item1.dart';
import 'package:avm1001/item/list_item2.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageOneState();
  }
}

class PageOneState extends State<PageOne> {
  final List<String> imgList = [
    'http://www.1001avm.az/modules/htmlbanners1/views/img/upload/sample-1.png',
    'http://www.1001avm.az/modules/htmlbanners1/views/img/upload/sample-2.png',
    'http://www.1001avm.az/modules/htmlbanners1/views/img/upload/sample-3.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int _current = 0;
  double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    // TODO: implement build
    final List child = map<Widget>(
      imgList,
      (index, i) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(children: <Widget>[
              Image.network(
                i,
                fit: BoxFit.contain,
                width: 500.0,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. $index image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    ).toList();

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Container(
              child: CarouselSlider(
                items: child,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 3,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              margin: EdgeInsets.all(8),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Special Offer",
                        style: TextStyle(
                          fontSize: 22,
                          color: fixedColor.withOpacity(0.7),
                        ))),
                Container(
                  child: new Divider(
                    color: Colors.orange,
                  ),
                  width: 150,
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ListItemOne(
                  title: "New Iphone in our store!",
                  img: imgList[index],
                  subtitle: "Shop now",
                );
              },
              itemCount: 3,
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: width,
                  child: Text(
                    "Featured",
                    style: TextStyle(color: fixedColor, fontSize: 18),
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border(bottom: BorderSide(color: Colors.orange))),
                  alignment: Alignment.center,
                ),
                Container(
                  width: width,
                  child: Text(
                    "New",
                    style: TextStyle(color: fixedColor, fontSize: 18),
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.orange))),
                  alignment: Alignment.center,
                ),
                Container(
                  width: width,
                  child: Text(
                    "Top Rated",
                    style: TextStyle(color: fixedColor, fontSize: 18),
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(bottom: BorderSide(color: Colors.orange))),
                  alignment: Alignment.center,
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.navigate_before),
                Icon(Icons.navigate_next)
              ],
            ),
            SizedBox(height: 20,),
            ListItemTwo()
          ],
        ));
  }
}
