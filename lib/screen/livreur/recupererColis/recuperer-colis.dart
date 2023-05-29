import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:itsymobile/consts/global_colors.dart';
import 'package:itsymobile/screen/livreur/recupererColis/components/details-trajet.dart';


class RecupererColis extends StatefulWidget {
  const RecupererColis({super.key});

  @override
  State<RecupererColis> createState() => _RecupererColisState();
}

class _RecupererColisState extends State<RecupererColis> {
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
                              color: normalBackgroundColor,
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
