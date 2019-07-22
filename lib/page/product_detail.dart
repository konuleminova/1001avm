import 'package:avm1001/model/product.dart';
import 'package:avm1001/utility/constants.dart';
import 'package:avm1001/widget/common_widgets.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  Product product;

  ProductDetail({this.product});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductDetailState();
  }
}

class ProductDetailState extends State<ProductDetail> {
  Product product;

  @override
  Widget build(BuildContext context) {
    product = widget.product;
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              height: 400,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(color: fixedColor.withOpacity(0.2))),
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
                  Container(
                    child: Image.network(
                      product.img,
                      fit: BoxFit.contain,
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                  ),
                  Align(
                    child: Container(
                      margin: EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      decoration: BoxDecoration(color: Colors.orange),
                      padding: EdgeInsets.all(4),
                    ),
                    alignment: Alignment.bottomRight,
                  )
                ],
              ),
            ),
            Container(
                height: 230,
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: fixedColor.withOpacity(0.8)),
                    ),
                    rowStar(),
                    RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'Reference: ',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: 'Hello'),
                        ],
                      ),
                    ),
                    RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: 'Condition: ',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: 'New product'),
                        ],
                      ),
                    ),
                    RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: '10 ',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          new TextSpan(text: 'Items'),
                        ],
                      ),
                    ),
                    Divider(),
                    Text(
                      "1234567879 AZN tax incl.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ))
          ],
        ));
  }
}
