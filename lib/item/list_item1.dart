import 'package:avm1001/utility/constants.dart';
import 'package:flutter/material.dart';

class ListItemOne extends StatelessWidget {
  String title;
  String subtitle;
  String img;

  ListItemOne({this.title, this.subtitle, this.img});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, bottom: 8),
      color: fixedColor.withOpacity(0.01),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.network(
              img,
              fit: BoxFit.contain,
            ),
            flex: 2,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: fixedColor.withOpacity(0.7),
                        fontSize: 20,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          subtitle,
                          style: TextStyle(color: fixedColor, fontSize: 15),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.navigate_next,
                            size: 20,
                            color: fixedColor.withOpacity(0.5),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(40.0)),
                          alignment: Alignment.bottomRight)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
