import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
              'Total:',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 15),
              Text(
                '\$10',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 13, horizontal: 15 )),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            icon: const Icon(CupertinoIcons.cart),
            label: const Text('Add To Cart', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
        ]
      ),
    );
  }
}