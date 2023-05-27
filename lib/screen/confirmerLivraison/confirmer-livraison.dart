import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmerLivraison extends StatefulWidget {
  const ConfirmerLivraison({super.key});

  @override
  State<ConfirmerLivraison> createState() => _ConfirmerLivraisonState();
}

class _ConfirmerLivraisonState extends State<ConfirmerLivraison> {
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
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Détails de la livraison",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Où récupérer?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "Rue Chalotte?",
                                      style: TextStyle(
                                        color: Colors.blue[600],
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                              "assets/icons/details-livraison-icon.svg"),
                        ],
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(35)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 70),
                              child: Column(
                                children: [
                                  Text(
                                    "Aller vous confirmer?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green[900],
                                          minimumSize: Size(50, 50),
                                        ),
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.cancel_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            minimumSize: Size(280, 50)),
                                        onPressed: () {},
                                        child: const Text(
                                          "CONFIRMER LA DEMANDE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
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
