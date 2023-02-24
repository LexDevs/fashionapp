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
          Image.asset(
            fashionList[widget.fashionId].url,
            fit: BoxFit.cover,
            height: 500,
            width: 500,
            alignment: Alignment.center,
          ),
          Positioned(
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.15),
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
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: Column(
              children: [
                Icon(
                  Icons.comment_bank_rounded,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
