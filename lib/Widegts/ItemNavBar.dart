import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavBar extends StatelessWidget {
  const ItemNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  "Grand-Total:",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "\$10",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ),
                ),
              ],
            ),

            ElevatedButton.icon(
              onPressed: (){},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
              icon: const Icon(CupertinoIcons.cart),
              label: const Text(
                "Add to Cart", style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
