import 'package:flutter/material.dart';

Widget rowStar() => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RatingStar(),
        RatingStar(),
        RatingStar(),
        RatingStar(),
        RatingStar(),
      ],
    );

RatingStar() => Icon(
      Icons.star_border,
      color: Colors.orange,
      size: 18,
    );

divider() => new SizedBox(
      height: 2.0,
      child: new Center(
        child: new Container(
          margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 5.0,
          color: Colors.orange,
        ),
      ),
    );

navigate() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.navigate_before),
        Icon(Icons.navigate_next)
      ],
    );
