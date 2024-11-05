import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int activeIndex = 0;

  // Fixed product data
  final Map<String, dynamic> product = {
    'name': 'SLIDE SHOW',
    'images': [
      'https://droper-media.us-southeast-1.linodeobjects.com/13122023175010770.webp',
      'https://droper-media.us-southeast-1.linodeobjects.com/148202423525899.webp',
      'https://static.nike.com/a/images/t_default/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
      'https://static.nike.com/a/images/t_default/1419ed34-7762-420a-9f2a-2e2a65d5aba9/NIKE+DUNK+LOW.png',
      'https://static.nike.com/a/images/t_default/8cbb6c3e-bf4a-43a0-96f7-18a10d722f02/custom-nike-dunk-low-by-you-su24.png',
      'https://midwaysports.com/cdn/shop/files/NikeDunkLowLittleKids_Shoes_5.png?v=1719916883'
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          product['name'],
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Carousel for product images
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index; // Update active index
                  });
                },
              ),
              items: product['images'].map<Widget>((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            // Center the dot indicator
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: product['images'].length,
                effect: WormEffect(
                  activeDotColor: Colors.teal,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
