import 'package:avm1001/model/product.dart';
import 'package:avm1001/utility/constants.dart';
import 'package:avm1001/widget/common_widgets.dart';
import 'package:flutter/material.dart';

class ContinueShoppingPage extends StatelessWidget {
  Product product;

  ContinueShoppingPage({this.product});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
            color: fixedColor.withOpacity(0.03),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.network(product.img),
                  alignment: Alignment.center,
                ),
                Align(
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: fixedColor.withOpacity(0.4),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  alignment: Alignment.topRight,
                )
              ],
            ),
            height: 400,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  product.title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: fixedColor.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                row2Text("Quantity", "2"),
                row2Text("Total", "134567 AZN"),
                row2Text("Total Products (tax incl)", "2456634567 AzN"),
                row2Text("Total Shipping(tax incl)", "1 AZN"),
                row2Text("Tax", "0 AZN"),
                row2Text("Total(tax incl)", "2345677890 AZN"),
              ],
            ),
            margin: EdgeInsets.all(16.0),
            height: 240,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                child: Text(
                  "Continue Shopping",
                  style: TextStyle(color: fixedColor.withOpacity(0.5)),
                ),
                padding: EdgeInsets.all(12.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              color: Colors.orange,
              disabledColor: Colors.orange,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: RaisedButton(
              onPressed: () {},
              child: Padding(
                child: Text(
                  "Checkout",
                  style: TextStyle(color: fixedColor.withOpacity(0.5)),
                ),
                padding: EdgeInsets.all(12.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              color: Colors.orange,
              disabledColor: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
