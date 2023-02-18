import 'package:ecommerce_app/scr/features/core/screens/home/product_card.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecommerce App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(
                icon: Icons.accessibility_new,
                title: 'Men',
                onTap: () {},
              ),
              CategoryCard(
                icon: Icons.accessibility,
                title: 'Women',
                onTap: () {},
              ),
              CategoryCard(
                icon: Icons.color_lens,
                title: 'Colors',
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Featured Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return ProductCard(
                  imageUrl: 'https://picsum.photos/200/300?random=$index',
                  title: 'Product $index',
                  price: 10 + index.toDouble(),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
