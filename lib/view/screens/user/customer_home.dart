import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lib_app/view/screens/setting/profile.dart';
import 'package:lib_app/view/widgets/side_bar_menu.dart';

import '../../../logic/controller/prodect_controller.dart';
import '../../../model/product.dart';
import '../../widgets/SearchProducts.dart';
import '../../widgets/user/cart_item_customer.dart';
import '../../widgets/user/favourites/prodects_favourites.dart';

class CustomerHome extends StatelessWidget {
  CustomerHome({Key? key}) : super(key: key);
  final controller = Get.put(ProdectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade400,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: Colors.black),
        title: Container(
            //margin: EdgeInsets.only(top: 20),
            child: SearchProducts()),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print(controller.favouritesList);
              Get.to(prodectsFavourites());
            },
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              print(controller.favouritesList);
              Get.to(ProfileScreen());
            },
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          StreamBuilder(
            stream: controller.getData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                controller.prodects = snapshot.data!.docs
                    .map((e) => Prodect(
                        productNumber: e['productNumber'],
                        productName: e['productName'],
                        category: e['category'],
                        quantity: e['quantity'],
                        price: e['price'],
                        description: e['description'],
                        imageUrl: e['imageUrl']))
                    .toList();

                print('leeength ${controller.prodects.length}');
                if (controller.prodects.isNotEmpty) {
                  return CardItem(prodects: controller.prodects);
                } else {
                  return Text("No thing");
                }
              } else {
                return CardItem(prodects: controller.prodects);
              }
            },
          ),
        ],
      ),
    );
  }
}
