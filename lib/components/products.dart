import 'package:flutter/material.dart';
import 'package:agro_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': "Blazer",
      'picture': "images/products/blazer1.jpeg",
      'old_price': 120,
      'price': 85
    },
    {
      'name': "Red Dress",
      'picture': "images/products/dress1.jpeg",
      'old_price': 100,
      'price': 50
    },
    {
      'name': "Red Dress",
      'picture': "images/products/hills1.jpeg",
      'old_price': 100,
      'price': 50
    },
    {
      'name': "Red Dress",
      'picture': "images/products/blazer2.jpeg",
      'old_price': 100,
      'price': 50
    },
    {
      'name': "Red Dress",
      'picture': "images/products/skt2.jpeg",
      'old_price': 100,
      'price': 50
    },
    {
      'name': "Red Dress",
      'picture': "images/products/dress2.jpeg",
      'old_price': 100,
      'price': 50
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  // passing the value of products to product_details page
                  builder: (context) => new ProductDetails(
                      product_details_name: prod_name,
                      product_details_new_price: prod_price,
                      product_details_old_price: prod_old_price,
                      product_details_picture: prod_picture))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\₹${prod_price}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}


/// import the file of product details class