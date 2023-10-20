import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Widget/AppBarWidget.dart';
import 'package:food_app/Widget/CategoriesWidget.dart';
import 'package:food_app/Widget/DrawerWidget.dart';
import 'package:food_app/Widget/NewestItemsWidget.dart';
import 'package:food_app/Widget/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),

          // Search
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 3)
                  ),
                ]
              ),
              child: Padding(padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: Row(children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 290,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What would you like to have?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const Icon(Icons.filter_list),
                ]),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const CategoriesWidget(),

          //Popular Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Popular',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Popular Items Widget
          const PopularItemsWidget(),
          // Newest Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              'Newest',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Newest Items Widget
          NewestItemsWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ]
        ),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, 'cartPage');
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
