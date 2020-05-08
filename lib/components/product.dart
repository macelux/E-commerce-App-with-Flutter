import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct(
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
