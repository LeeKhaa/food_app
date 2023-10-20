import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          // for(int i = 0; i < 10; i++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'itemPage');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/pizza.png',
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Hot Pizza',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'Tast Our Hot Pizza, We Provide Our Great Foods',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1, 
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.red,),
                          onRatingUpdate: (index){},
                        ),
                        const Text(
                          '\$10',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,
                        ),
                      ]
                    ),
                  ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap:() {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/burger.png',
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Hot Burger',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'Tast Our Hot Burger, We Provide Our Great Foods',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1, 
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.red,),
                          onRatingUpdate: (index){},
                        ),
                        const Text(
                          '\$10',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,
                        ),
                      ]
                    ),
                  ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap:() {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/drink.png',
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Cold Drink',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'Tast Our Cold Drink, We Provide Our Great Foods',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1, 
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.red,),
                          onRatingUpdate: (index){},
                        ),
                        const Text(
                          '\$10',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,
                        ),
                      ]
                    ),
                  ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap:() {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/biryani.png',
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Chicken Biryani',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'Tast Our Chicken Biryani, We Provide Our Great Foods',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1, 
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.red,),
                          onRatingUpdate: (index){},
                        ),
                        const Text(
                          '\$10',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,
                        ),
                      ]
                    ),
                  ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap:() {},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/salan.png',
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Chicken Salan',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'Tast Our Chicken Salan, We Provide Our Great Foods',
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1, 
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.red,),
                          onRatingUpdate: (index){},
                        ),
                        const Text(
                          '\$10',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 26,
                        ),
                      ]
                    ),
                  ),
              ]),
            ),
          ),
        ],
      ),
      ),
    );
  }
}