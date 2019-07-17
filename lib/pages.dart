import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Page One'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/two');
              },
              child: Text('to Page Two'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Page Two'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/three');
              },
              child: Text('go to next'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('go to back'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Page Three'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('go to back'),
            ),
          ],
        ),
      ),
    );
  }
}