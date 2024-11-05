import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'THE POWERPUFF GIRLS X NIKE DUNK LOW SB QS “BUBBLES” ', 'price': 499.0, 'image': 'https://droper-media.us-southeast-1.linodeobjects.com/13122023175010770.webp'},
    {'name': 'Nike SB Dunk Low Verdy Visty', 'price': 200.0, 'image': 'https://droper-media.us-southeast-1.linodeobjects.com/148202423525899.webp'},
    {'name': 'Nike Dunk High', 'price': 289.0, 'image': 'https://static.nike.com/a/images/t_default/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png'},
    {'name': 'Nike Dunk Low', 'price': 300.0, 'image': 'https://static.nike.com/a/images/t_default/1419ed34-7762-420a-9f2a-2e2a65d5aba9/NIKE+DUNK+LOW.png'},
    {'name': 'Nike Dunk Low Custom', 'price': 250.0, 'image': 'https://static.nike.com/a/images/t_default/8cbb6c3e-bf4a-43a0-96f7-18a10d722f02/custom-nike-dunk-low-by-you-su24.png'},
    {'name': 'Nike Dunk Low Little Kids', 'price': 214.0, 'image': 'https://midwaysports.com/cdn/shop/files/NikeDunkLowLittleKids_Shoes_5.png?v=1719916883'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue[50],
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {},
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Image.network(
                            product['image'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.teal,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      product['name'],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "\$${product['price']}",
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
