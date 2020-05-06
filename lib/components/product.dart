import 'package:flutter/material.dart';

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
      "price": 540,
    }
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
            productOldPrice: productList[index]['oldPrice'],
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
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              child: Image.asset(productPicture, fit: BoxFit.cover,),
              footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(productName, style: TextStyle(fontWeight: FontWeight.bold),),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
