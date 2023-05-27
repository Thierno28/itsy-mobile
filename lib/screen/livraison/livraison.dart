import 'package:flutter/material.dart';

class Livraison extends StatefulWidget {
  const Livraison({super.key});

  @override
  State<Livraison> createState() => _LivraisonState();
}

class _LivraisonState extends State<Livraison> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        backgroundColor: Color(0x0A1D23),
        elevation: 0,
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
                  padding: EdgeInsets.only(bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: Size(250, 40)),
                              onPressed: () {},
                              child: const Text(
                                "FINIR LA COURSE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
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
