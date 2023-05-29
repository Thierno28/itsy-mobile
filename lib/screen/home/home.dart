import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text("ItSy"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0x2E758B),
              ),
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/map.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 70, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        SvgPicture.asset("assets/icons/position.svg")
                      ])
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
