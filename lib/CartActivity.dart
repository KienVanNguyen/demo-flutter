import 'package:demofutter/slidable/SlidableAction.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert' ;
import 'package:http/http.dart' as http;
import 'package:line_icons/line_icons.dart';

class Product {
  final String name;
  final String condition;
  final String price;
  final String imageUrl;
  Product(this.name, this.condition, this.price, this.imageUrl);

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['condition'],
      json['price'],
      json['imageUrl'],
    );
  }
}

List<Product> parseProducts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromMap(json)).toList();
}
Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('https://624aa9c0fd7e30c51c100a52.mockapi.io/phone'));
  if (response.statusCode == 200) {
    return parseProducts(utf8.decode(response.bodyBytes));
  } else {
    throw Exception('Error dowload');
  }
}
class CardActivity2 extends StatelessWidget {
  final Future<List<Product>> products;
  CardActivity2({Key? key, required this.products}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(products: products),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final Future<List<Product>> products;
  MyHomePage({Key? key, required this.products}) : super(key: key);

  // final items = Product.getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: FutureBuilder<List<Product>>(
            future: products, builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData ? ProductBoxList(items: snapshot.data??[])
            :// return the ListView widget :
            Center(child: CircularProgressIndicator());
          },
          ),
        ),
        bottomNavigationBar: Checkout(),
    );
  }
}

class ProductBoxList extends StatelessWidget {
  final List<Product> items;
  ProductBoxList({Key? key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SlidableWidget(
          child: ProductBox(item: items[index]),
          onDismissed: (action) =>
              dismissSlidableItem(context, index, action),
          // onTap: () {
          //   Navigator.push(
          //     context, MaterialPageRoute(
          //     builder: (context) => ProductPage(item: items[index]),
          //   ),
          //   );
          // },
        );
      },
    );
  }
  void dismissSlidableItem(
      BuildContext context, int index, SlidableAction action) {
  }


}
// class ProductPage extends StatelessWidget {
//   ProductPage({Key? key, required this.item}) : super(key: key);
//   final Product item;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(this.item.name),),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(0),
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Image.network(""),
//                 Expanded(
//                     child: Container(
//                         padding: EdgeInsets.all(5),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: <Widget>[
//                             Text(this.item.name, style:
//                             TextStyle(fontWeight: FontWeight.bold)),
//                             Text(this.item.condition),
//                             Text("Price: " + this.item.price.toString()),
//                             RatingBox(),
//                           ],
//                         )
//                     )
//                 )
//               ]
//           ),
//         ),
//       ),
//     );
//   }
// }
class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }
  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }
  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }
  void _setRatingAsFour() {
    setState( () {
      _rating = 4;
    });
  }
  void _setRatingAsFive() {
    setState( () {
      _rating = 5;
    });
  }
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 1 ? Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.blue,
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 2 ?
                Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.blue,
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 3 ?
                Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.blue,
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 4 ?
                Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.blue,
            onPressed: _setRatingAsFour,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (
                _rating >= 5 ?
                Icon(
                  Icons.star,
                  size: _size,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                )
            ),
            color: Colors.blue,
            onPressed: _setRatingAsFive,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.item}) : super(key: key);
  final Product item;

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 0),
        padding: EdgeInsets.all(2), height: 140,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/images/" + this.item.imageUrl),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                            Text(this.item.condition.toString(), style: TextStyle(fontSize: 15,color: Colors.lightBlueAccent)),
                            Text("Giá: " + this.item.price.toString() + " VND", style: TextStyle(fontSize: 15,color: Colors.redAccent)),
                            RatingBox(),
                          ],
                        )
                    )
                )
              ]
          ),
        )
    );
  }
}
class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),

      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(LineIcons.moneyBill),
                ),
                Spacer(),
                Text("Áp dụng mã giảm giá"),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Thành tiền:\n",
                    style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold ),
                    children: [
                      TextSpan(
                        text: "\33.990.000 VND",
                        style: TextStyle(fontSize: 14, color: Colors.redAccent),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    color: Colors.blue,

                    child: Text('Thanh toán', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    onPressed: () {  },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}