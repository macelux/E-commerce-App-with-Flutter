import 'package:flutter/material.dart';
import '../main.dart';

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
        title: InkWell(
          child: Text('Bisi Application'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
        ),
        actions: <Widget>[ 
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
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        )),
                        Expanded(
                            child: new Text(
                          "N${widget.productDetailNewPrice}",
                          style: TextStyle(fontSize: 16.0, color: Colors.red),
                        ))
                      ],
                    ),
                  )),
            ),
          ),

          // ====== the first button ======
          Row(children: <Widget>[
            // ======= the size button ==========
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the Size"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(children: <Widget>[
                  Expanded(
                    child: Text("Size"),
                  ),
                  Expanded(
                    child: new Icon(Icons.arrow_drop_down),
                  )
                ]),
              ),
            ),

            // ======= the size button ==========
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choose a color"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(children: <Widget>[
                  Expanded(
                    child: Text("Colour"),
                  ),
                  Expanded(
                    child: new Icon(Icons.arrow_drop_down),
                  )
                ]),
              ),
            ),

            // ======= the size button ==========
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose quantity"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(children: <Widget>[
                  Expanded(
                    child: Text("Qty"),
                  ),
                  Expanded(
                    child: new Icon(Icons.arrow_drop_down),
                  )
                ]),
              ),
            ),
          ]),

          // ====== the Second  button ======
          Row(children: <Widget>[
            // ======= the size button ==========
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.purple,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text(
                  "Buy Now",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
            new IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {},
              color: Colors.purple,
            ),
            new IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.purple,
            ),
          ]),

          Divider(),
          new ListTile(
            title: new Text(
              "Product Details",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),
            ),
            subtitle: Text(
                "lorem Ispsun asasjk ajsjjj auuasakwr ahsowppri ajasyaod ausbbfd ajsajsasf asan"),
          ),
          Divider(),

          Row(children: <Widget>[
            new Text(" Product Name",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)),
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Text(widget.productDetailName),
            ),
          ]),

          Row(children: <Widget>[
            new Text(" Product Brand",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)),
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: new Text("data"),
            )
          ]),

          Row(children: <Widget>[
            new Text(" Product Condition",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)),
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0)),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: new Text("Mew"),
            )
          ]),

          Divider(),
          Padding(child: Text("Similar Products"), padding: const EdgeInsets.all(8.0),),
          // SIMILAR PRODUCT SECTION
          Container(child: SimilarProducts(),height: 360.0,)
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> { 

  var productList = [
    {
      "name": "Blazzer",
      "picture": "images/jean1.jpeg",
      "old_price": 2000,
      "price": 500,
    },
    {
      "name": "Jean",
      "picture": "images/jean2.jpeg",
      "old_price": 1000,
      "price": 25000,
    },
    {
      "name": "T Shirt",
      "picture": "images/tshirt2.jpeg",
      "old_price": 4300,
      "price": 2000,
    },
    {
      "name": "Koncamp",
      "picture": "images/tshirt.jpeg",
      "old_price": 8000,
      "price": 12000,
    },
    {
      "name": "Designers",
      "picture": "images/tshirt.jpeg",
      "old_price": 8000,
      "price": 12000,
    },
    {
      "name": "T Shirt",
      "picture": "images/tshirt2.jpeg",
      "old_price": 4300,
      "price": 2000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
  } 

class SimilarSingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SimilarSingleProduct(
      {this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("Hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                // here we are passing the value to the product to the product details page
                builder: (context) => new ProductDetails(
                      productDetailName: productName,
                      productDetailPicture: productPicture,
                      productDetailNewPrice: productPrice,
                      productDetailOldPrice: productOldPrice,
                    ))),
            child: GridTile(
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                  color: Colors.white70,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Text(
                        productName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    Text(
                      "\N${productPrice}",
                      style: TextStyle(color: Colors.red, fontSize: 16.0, fontWeight: FontWeight.bold),
                    )
                  ])),
            ),
          ),
        ),
      ),
    );
  }
}
