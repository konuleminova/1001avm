import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("1001avm"),
      ),
      drawer: Drawer(
        elevation: 12,
          child: Container(
            padding: EdgeInsets.all(8),
        color: const Color(0xFF323F48),
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
                image: DecorationImage(image: AssetImage("assets/logo.jpg",),fit: BoxFit.contain)
              ),
            ),
            ListTile(
              title: Text("Account",style: TextStyle(color: Colors.white),),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Categories",style: TextStyle(color: Colors.white)),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Information",style: TextStyle(color: Colors.white)),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("About Us",style: TextStyle(color: Colors.white)),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Contacts",style: TextStyle(color: Colors.white)),
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
    );
  }
}
