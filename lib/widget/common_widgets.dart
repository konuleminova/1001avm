import 'package:avm1001/utility/constants.dart';
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

row2Text(String text1, text2) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text1,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: fixedColor.withOpacity(0.7)),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: fixedColor.withOpacity(0.7)),
        ),
      ],
    );
