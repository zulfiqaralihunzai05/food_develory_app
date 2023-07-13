import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_develory_app/Widegts/AppBarWidget.dart';
import 'package:food_develory_app/Widegts/CategoriesWidget.dart';

import '../Widegts/DrawerWidget.dart';
import '../Widegts/NewestItemWidget.dart';
import '../Widegts/PopularItemWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),

          //SearchBar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.search,
                          color: Colors.red,
                        ),
                        Container(
                          height: 50,
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 15
                              ),
                              decoration: const InputDecoration(
                                  hintText: "what would you like to have",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          //categories widget
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const CategoriesWidget(),

          //Popular Items Widget
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Popular ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const PopularItemWidget(),

          //Newest Wideget
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Newest ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const NewestItemWidget()

          //Shopping Cart
        ],
      ),
      drawer: const DrawerWidget(),

      //Floating Button
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {

            Navigator.pushNamed(context, "CartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
