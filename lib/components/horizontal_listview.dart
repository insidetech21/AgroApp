import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: "images/Agro_Images/Categories/agriculture.png",
            imageCaption: 'Agriculture',
          ),
          Category(
            imageLocation: "images/Agro_Images/Categories/agronomy.png",
            imageCaption: 'Agronomy',
          ),
          Category(
            imageLocation: "images/Agro_Images/Categories/farmer.png",
            imageCaption: 'farmer',
          ),
          Category(
            imageLocation: "images/Agro_Images/Categories/greenhouse.png",
            imageCaption: 'GreenHouse',
          ),
          Category(
            imageLocation: "images/Agro_Images/Categories/harvest.png",
            imageCaption: 'harvest',
          ),
          Category(
            imageLocation: "images/Agro_Images/Categories/seed.png",
            imageCaption: 'Seeds',
          ),
          Category(
            imageLocation: "images/Agro_Images/Categories/seedling.png",
            imageCaption: 'seedling',
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
              title: Image.asset(imageLocation, width: 100.0, height: 80.0),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
