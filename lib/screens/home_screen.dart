// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, dead_code, sized_box_for_whitespace
import 'package:fashionapp/model/fashion.dart';
import 'package:fashionapp/screens/details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Fashion> fashionList = Fashion.fashionList;

  bool toggleIsFavorite(bool isFavorite) {
    return !isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find Your Clothes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // SingleChildScrollView(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       ClipRRect(
          //         borderRadius: BorderRadius.circular(25.0),
          //         child: const Image(
          //           image: AssetImage(
          //             'assets/off.png',
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       'Explore Shop',
          //       style: TextStyle(
          //         fontWeight: FontWeight.w800,
          //         fontSize: 30,
          //       ),
          //     ),
          //     Image.asset(
          //       'assets/imgs/filter.png',
          //       height: 30,
          //     )
          //   ],
          // ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Winter'),
              Text('Men'),
              Text('Woman'),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Expanded(
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
                }),
          ),
        ],
      ),
    );
  }
}
