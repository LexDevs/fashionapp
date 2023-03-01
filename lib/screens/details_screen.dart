// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_label, non_constant_identifier_names
import 'package:fashionapp/model/fashion.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final int fashionId;

  const DetailsScreen({super.key, required this.fashionId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Fashion> fashionList = Fashion.fashionList;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add to cart'),
        icon: const Icon(Icons.check_circle_outline),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Hero(
            tag: fashionList[widget.fashionId].id,
            child: Image.asset(
              fashionList[widget.fashionId].url,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.20),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.star_border_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 390,
            left: 30,
            child: Column(
              children: [
                Icon(
                  Icons.chat_bubble_outline_sharp,
                  color: Colors.white,
                ),
                Text(
                  '40',
                  style: TextStyle(
                    fontSize: 16.3,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 450,
            left: 30,
            child: Column(
              children: [
                Icon(
                  Icons.favorite_border_sharp,
                  color: Colors.white,
                ),
                Text(
                  '220',
                  style: TextStyle(
                    fontSize: 16.3,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 510,
            left: 30,
            child: Column(
              children: [
                Icon(
                  Icons.share_sharp,
                  color: Colors.white,
                ),
                Text(
                  '340',
                  style: TextStyle(
                    fontSize: 16.3,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            right: 30,
            left: 30,
            child: Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fashionList[widget.fashionId].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      fashionList[widget.fashionId].description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
