import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: "images/tshirt.jpeg",
            imageCaption: "shirt",
          ),

          Category(
            imageLocation: "images/tshirt2.jpeg",
            imageCaption: "Nice Shirt",
          ),

          Category(
            imageLocation: "images/jean1.jpeg",
            imageCaption: "Jean",
          ),

          Category(
            imageLocation: "images/tshirt3.jpeg",
            imageCaption: "Jean",
          ),
 
 
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(imageLocation, width: 100.0,
              height: 80.0),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child:  Text(imageCaption, ),
              )
            )),
      ),
    );
  }
}
