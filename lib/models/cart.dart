import 'package:flutter/material.dart';
import 'package:sneakershop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Super Zoom',
        price: 'RM 125',
        imagePath: 'lib/images/Shoes_1.avif',
        description: 'Experience the thrill of speed with this sleek design'),
    Shoe(
        name: 'Nike Revolution 7',
        price: 'RM 630',
        imagePath: 'lib/images/Shoes_2.avif',
        description: 'Elevate your style with this luxurious and premium shoe'),
    Shoe(
        name: 'Nike Air Maxx ',
        price: 'RM 424',
        imagePath: 'lib/images/Shoes_3.avif',
        description:
            'Step into comfort with this innovative and ergonomic design'),
    Shoe(
        name: 'Nike Dunk',
        price: 'RM 320',
        imagePath: 'lib/images/Shoes_4.avif',
        description: 'Unleash your creativity with this bold and vibrant shoe')
  ];

  //list of items in user cart

  List<Shoe> userCart = [];

  //get list of items in sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
