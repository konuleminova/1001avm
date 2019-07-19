import 'package:avm1001/utility/constants.dart';
import 'package:avm1001/utility/nested_navigator.dart';
import 'package:avm1001/page/home_page.dart';
import 'package:avm1001/page/pages.dart';
import 'package:flutter/material.dart';

class CorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CorePageState();
  }
}

class CorePageState extends State<CorePage> {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  var _itemExtent=1600.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        drawer: Drawer(
            elevation: 12,
            child: Container(
              padding: EdgeInsets.all(8),
              color: fixedColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  DrawerHeader(
                    child: Container(
                      margin: EdgeInsets.all(32),
                      width: 100,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xFF323F48),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/logo.jpg",
                            ),
                            fit: BoxFit.contain)),
                  ),
                  ListTile(
                    title: Text(
                      "Account",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text("Categories",
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTile(
                    title: Text("Information",
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTile(
                    title:
                        Text("About Us", style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListTile(
                    title:
                        Text("Contacts", style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  )
                ],
              ),
            )),
        //: NestedScrollView(
        //          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        //            return <Widget>[
        //              SliverAppBar(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: fixedColor.withOpacity(0.7)),
              expandedHeight: 150.0,
              backgroundColor: Colors.white,
              elevation: 4.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 80,
                            child: Image.network(
                              "http://www.1001avm.az/img/gobay-logo-1563430851.jpg",
                            ),
                            padding: EdgeInsets.only(top: 16),
                          ),
                          Divider(
                            color: fixedColor.withOpacity(0.5),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Text(
                                        "Search...",
                                        style: TextStyle(
                                            color: fixedColor.withOpacity(0.5)),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomLeft: Radius.circular(40)),
                                        color: Colors.white),
                                    padding: EdgeInsets.all(8),
                                  ),
                                  flex: 1,
                                ),
                                Container(
                                  child: Icon(Icons.search),
                                  padding: EdgeInsets.all(5),
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.orange.withOpacity(0.7)),
                            padding: EdgeInsets.all(1),
                            margin: EdgeInsets.all(8),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(top: 20))),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  child: Icon(Icons.shopping_basket),
                )
              ],
            ),
            SliverFixedExtentList(
              itemExtent: _itemExtent,
              delegate: SliverChildListDelegate(
                [
                  Container(
                    child: NestedNavigator(
                      navigationKey: navigationKey,
                      initialRoute: '/',
                      routes: {
                        // default rout as '/' is necessary!
                        '/': (context) => HomePage(),
                        '/two': (context) => PageTwo(),
                        '/three': (context) => PageThree(),
                      },
                    ),
                    height: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(canvasColor: fixedColor),
            // sets the inactive color of the `BottomNavigationBar`
            child: Container(
              color: fixedColor,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.5))),
                    padding: EdgeInsets.all(4),
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      "EN",
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.5))),
                    padding: EdgeInsets.all(4),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text(
                      "AZN",
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.5))),
                    padding: EdgeInsets.all(4),
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.5))),
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            )));
  }
}
