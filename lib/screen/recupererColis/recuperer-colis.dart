import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itsymobile/screen/recupererColis/components/details-trajet.dart';

class RecupererColis extends StatefulWidget {
  const RecupererColis({super.key});

  @override
  State<RecupererColis> createState() => _RecupererColisState();
}

class _RecupererColisState extends State<RecupererColis> {
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 450,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(35)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green[900],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 70),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Details(
                                          text: "100 M",
                                          icon: SvgPicture.asset(
                                              "assets/icons/localisation.svg")),
                                      Details(
                                          text: "1h 30",
                                          icon: SvgPicture.asset(
                                              "assets/icons/clock.svg"))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        minimumSize: Size(350, 50)),
                                    onPressed: () {},
                                    child: const Text(
                                      "RÉCUPERER LE COLIS",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
