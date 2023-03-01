// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:fashionapp/model/fashion.dart';
import 'package:fashionapp/screens/details_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<Fashion> mainFashionList = Fashion.fashionList;

  List<Fashion> get fashionList =>
      mainFashionList.where((element) => element.isFavorite == true).toList();

  bool toggleIsFavorite(bool isFavorite) {
    return !isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: fashionList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        fashionId: index,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: fashionList[index].id,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(fashionList[index].url),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 20,
                          child: Text(
                            fashionList[index].name,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Text(
                            fashionList[index].location,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 20,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                bool isFavorite = toggleIsFavorite(
                                    fashionList[index].isFavorite);
                                fashionList[index].isFavorite = isFavorite;
                              });
                            },
                            icon: fashionList[index].isFavorite == true
                                ? Icon(Icons.favorite, color: Colors.red)
                                : Icon(Icons.favorite_border,
                                    color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
