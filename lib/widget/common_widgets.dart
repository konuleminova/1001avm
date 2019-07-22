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
