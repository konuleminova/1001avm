import 'package:avm1001/page/product_detail.dart';
import 'package:avm1001/utility/constants.dart';
import 'package:avm1001/item/list_item1.dart';
import 'package:avm1001/item/list_item2.dart';
import 'package:avm1001/model/product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'http://www.1001avm.az/modules/htmlbanners1/views/img/upload/sample-1.png',
    'http://www.1001avm.az/modules/htmlbanners1/views/img/upload/sample-2.png',
    'http://www.1001avm.az/modules/htmlbanners1/views/img/upload/sample-3.png',
  ];
  final List<String> productImgList = [
    'http://www.1001avm.az/2570-home_default/vestel.jpg',
    'http://www.1001avm.az/2588-home_default/lg-6100.jpg',
    'http://www.1001avm.az/2573-large_default/toshiba.jpg',
  ];
  final List<String> brandImgList = [
    'http://www.1001avm.az/img/m/20-manufacturer_default.jpg',
    'http://www.1001avm.az/img/m/21-manufacturer_default.jpg',
    'http://www.1001avm.az/img/m/22-manufacturer_default.jpg',
  ];

  bool isOnclick = false;

  bool isOnclick2 = false;

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

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              child: CarouselSlider(
                items: getChild(),
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
                return GestureDetector(
                  child: ListItemOne(
                    title: "New Iphone in our store!",
                    img: imgList[index],
                    subtitle: "Shop now",
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, "/product_detail");
                  },
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
            SizedBox(
              height: 20,
            ),
            Container(
                height: 550.0,
                padding: EdgeInsets.only(left: 4, right: 4),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: EdgeInsets.all(4),
                        child: GestureDetector(
                          child: ListItemTwo(
                            product: Product(
                                img: productImgList[index],
                                title: "THOSHIBA",
                                price: "1234565678 AZN"),
                          ),
                          onTap: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ProductDetail(
                                    product: Product(
                                        img: productImgList[index],
                                        title:  "THOSHIBA")));
                            Navigator.push(context, route);
                          },
                        ));
                  },
                  itemCount: 3,
                )),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Our brands",
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isOnclick = true;
                      });
                    },
                    child: Container(
                      child: Icon(Icons.navigate_before,
                          color: !isOnclick
                              ? fixedColor.withOpacity(0.3)
                              : Colors.white),
                      decoration: BoxDecoration(
                          color:
                              isOnclick ? Colors.orange : Colors.transparent),
                      padding: EdgeInsets.all(3),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: CarouselSlider(
                      items: getBrandChild(),
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 3,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isOnclick2 = true;
                      });
                    },
                    child: Container(
                      child: Icon(Icons.navigate_next,
                          color: !isOnclick2
                              ? fixedColor.withOpacity(0.3)
                              : Colors.white),
                      decoration: BoxDecoration(
                          color:
                              isOnclick2 ? Colors.orange : Colors.transparent),
                      padding: EdgeInsets.all(3),
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(8),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }

  getChild() {
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
    return child;
  }

  getBrandChild() {
    final List child = map<Widget>(
      brandImgList,
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
            ]),
          ),
        );
      },
    ).toList();
    return child;
  }
}
