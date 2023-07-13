import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_develory_app/Widegts/AppBarWidget.dart';

import '../Widegts/ItemNavBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/pizza.png',
                height: 200,
                width: 100,
              ),
            ),
            Arc(
              edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 40,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (index) {},
                              ),
                              const Text(
                                "\$10",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 20
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Hot Pizza",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Container(
                                width: 90,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(CupertinoIcons.minus,
                                    color: Colors.white,
                                    size: 20,),

                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                    ),

                                    Icon(CupertinoIcons.plus,
                                      color: Colors.white,
                                      size: 20,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Taste Our Hot Pizza at lowest Price, this is the "
                                "famous pizza and and you love it. it will"
                                " cost you at low price , we hope you will "
                                "enjoy and order many times",
                            style: TextStyle(
                              fontSize: 14,),
                            textAlign: TextAlign.justify,
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Charges: ",
                                style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),
                                textAlign: TextAlign.justify,
                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Icon(CupertinoIcons.clock, color: Colors.red,),
                                  ),
                                  Text(
                                    "30 Minutes ",
                                    style: TextStyle(
                                      fontSize: 16,),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),

                            ],
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
      bottomNavigationBar: ItemNavBar(),
    );
  }
}
