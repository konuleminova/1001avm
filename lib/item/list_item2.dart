import 'package:avm1001/utility/constants.dart';
import 'package:avm1001/model/product.dart';
import 'package:flutter/material.dart';

class ListItemTwo extends StatefulWidget {
  Product product;

  ListItemTwo({this.product});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListItemTwoState();
  }
}

class ListItemTwoState extends State<ListItemTwo> {
  Product product;

  @override
  Widget build(BuildContext context) {
    product = widget.product;
    // TODO: implement build
    return Align(
        alignment: Alignment.center,
        child: Card(
          child: Container(
            width: 300,
            child: Stack(
              children: <Widget>[
                Align(
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60.0),
                            bottomRight: Radius.circular(60.0))),
                    child: Text(
                      "NEW",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.only(top: 16),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Image.network(product.img),
                      width: 200,
                      margin: EdgeInsets.only(top: 8),
                    ),
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
                      product.title,
                      style: TextStyle(
                          fontSize: 20, color: fixedColor.withOpacity(0.3)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            product.price,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: fixedColor),
                          ),
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
                          margin: EdgeInsets.only(right: 16),
                        )
                      ],
                    ),
                    Divider(
                      color: fixedColor.withOpacity(0.1),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: fixedColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(40.0)),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(right: 8)),
                        Container(
                            child: Icon(
                              Icons.remove_red_eye,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: fixedColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(40.0)),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(right: 8)),
                        Container(
                            child: Icon(
                              Icons.more_horiz,
                              size: 20,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: fixedColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(40.0)),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(right: 8))
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    )
                  ],
                )
              ],
            ),
          ),
          elevation: 1.0,
        ));
  }

  RatingStar() => Icon(
        Icons.star_border,
        color: Colors.orange,
        size: 18,
      );
}
