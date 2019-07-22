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

  var width;

  @override
  Widget build(BuildContext context) {
    product = widget.product;
    width = MediaQuery.of(context).size.width;
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
              height: 550,
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                            style: new TextStyle(fontWeight: FontWeight.bold)),
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
                            style: new TextStyle(fontWeight: FontWeight.bold)),
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
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        new TextSpan(text: 'Items'),
                      ],
                    ),
                  ),
                  Divider(),
                  Text(
                    "1234567879 AZN tax incl.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: fixedColor.withOpacity(0.8)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "QUANTITY",
                        style: TextStyle(
                            color: fixedColor.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Text("1"),
                        padding: EdgeInsets.all(5),
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: fixedColor.withOpacity(0.2))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  RaisedButton(
                    onPressed: null,
                    child: Padding(
                      child: Text("Add to Cart"),
                      padding: EdgeInsets.all(12.0),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    color: Colors.orange,
                    disabledColor: Colors.orange,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.mail_outline, color: fixedColor),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: fixedColor.withOpacity(0.2))),
                      ),
                      Container(
                        child: Icon(Icons.share, color: fixedColor),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: fixedColor.withOpacity(0.2))),
                      ),
                      Container(
                        child: Icon(Icons.print, color: fixedColor),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: fixedColor.withOpacity(0.2))),
                      ),
                      Container(
                        child: Icon(Icons.favorite, color: fixedColor),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: fixedColor.withOpacity(0.2))),
                      ),
                      Container(
                        child: Icon(Icons.redo, color: fixedColor),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: fixedColor.withOpacity(0.2))),
                      ),
                      SizedBox(
                        width: 100,
                      )
                    ],
                  ),
                  Divider(),
                  Text(
                    'Descrioption Lorem ipsum.LED 43"; 9.6 kg; 97.5 x 85.2 x 57.1 Səs gücü 20w; Stereo - var; Wi-Fi - var',
                    style: TextStyle(color: fixedColor),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    width: width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: fixedColor.withOpacity(0.2))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.question_answer,
                          size: 15.0,
                          color: fixedColor.withOpacity(0.8),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "REVIEWS",
                          style: TextStyle(color: fixedColor.withOpacity(0.8)),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(12.0),
                      width: width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: fixedColor.withOpacity(0.2))),
                      child: Text(
                        "CUSTOM",
                        style: TextStyle(color: fixedColor.withOpacity(0.8)),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
