import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailNewPrice;
  final productDetailOldPrice;

  ProductDetails(
      {this.productDetailName,
      this.productDetailPicture,
      this.productDetailNewPrice,
      this.productDetailOldPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // top navigation
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple,
        title: Text('Bisi Application'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_basket), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),

      // body
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: new Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(
                      widget.productDetailName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                          "N${widget.productDetailOldPrice}",
                          style: TextStyle(decoration: TextDecoration.lineThrough),
                        )),
                        Expanded(
                          child: new Text(
                          "N${widget.productDetailNewPrice}",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.red),
                        ))
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
