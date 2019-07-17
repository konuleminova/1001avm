import 'package:avm1001/constants.dart';
import 'package:flutter/material.dart';

class ListItemTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListItemTwoState();
  }
}

class ListItemTwoState extends State<ListItemTwo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 200,
        child: Stack(
          children: <Widget>[
            Align(
              child: Container(
                width: 80,
                decoration: BoxDecoration(color: Colors.green),
                child: Text("NEW"),
              ),
              alignment: AlignmentDirectional.topStart,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(
                    "http://www.1001avm.az/2572-home_default/skyworth.jpg"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RatingStar(),
                    RatingStar(),
                    RatingStar(),
                    RatingStar(),
                    RatingStar(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "TOSHIBA",
                  style: TextStyle(
                      fontSize: 20, color: fixedColor.withOpacity(0.5)),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "1234546 AZN",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: fixedColor),
                    ),
                    Container(
                      child: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(40.0)),
                      padding: EdgeInsets.all(8),
                    )
                  ],
                ),
                Divider(
                  color: fixedColor.withOpacity(0.2),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  RatingStar() => Icon(
        Icons.star_border,
        color: Colors.orange,
        size: 20,
      );
}
