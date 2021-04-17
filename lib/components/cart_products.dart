import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      'name': "Acidity Agents",
      'picture': "images/Agro_Images/acidifying_agents/AQUA, otirinse , 237ml liquid.jpg",
      'price': 50,
      'size': "M",
      'color': "Red",
      'quantity':1,
    },
    {
      'name': "Fertilizers",
      'picture': "images/Agro_Images/Fertilizers/ABTEC , vermi compost , 5kg powder.jpg",
      'price': 500,
      'size': "L",
      'color': "Black",
      'quantity':1,
    },
    {
      'name': "Acidity Agents",
      'picture': "images/Agro_Images/acidifying_agents/WELLNWSS , ultra acid, 100 capsules.jpg",
      'price': 500,
      'size': "L",
      'color': "Black",
      'quantity':1,
    },
  ];
  
  @override
  Widget build(BuildContext context) {
        return new ListView.builder(
            itemCount: Products_on_the_cart.length,
            itemBuilder: (context,index){
                return new Single_cart_product(
                  cart_prod_name: Products_on_the_cart[index]['name'],
                  cart_prod_color: Products_on_the_cart[index]['color'],
                  cart_prod_qty: Products_on_the_cart[index]['quantity'],
                  cart_prod_size: Products_on_the_cart[index]['size'],
                  cart_prod_price: Products_on_the_cart[index]['price'],
                  cart_prod_picture: Products_on_the_cart[index]['picture'],
                );
            });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
   this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//==========Leading Section (Image..etc)======
        leading: new Image.asset(cart_prod_picture,
          width: 100,
          height: 150,),
 //==========Title Section============
        title: new Text(cart_prod_name),
 //==========Subtitle Section=========
        subtitle: new Column(
          children: <Widget>[
     //  =========ROW INSIDE COLUMN===========
            new Row(
              children: <Widget>[
     //  ============this section is for the size of the product Size=============
                Padding(
                  padding: const EdgeInsets.all(05.0),
                  child: new Text('Size'),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_prod_size,style:TextStyle(color: Colors.green),),
                ),
//       =========This Section Is For Product Color==============
                new Padding(padding: const EdgeInsets.fromLTRB(05.0, 8.0, 8.0, 8.0),
                child: new Text('Color:'),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.green),),
                ),

              ],
            ),

  //=========This Section Is For Product Price==========

            new Container(
              alignment: Alignment.topLeft,
              child: new Text('\₹${cart_prod_price}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),),
            ),
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.black),iconSize: 50.0, onPressed: (){}),
              Text('$cart_prod_qty',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              new IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.black,),iconSize: 50.0,onPressed:(){}),

            ],
          ),
        ),
      ),
      );

  }
}

