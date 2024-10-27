import 'package:flutter/cupertino.dart';

import 'car.dart';

class Cart extends ChangeNotifier
{
  //List of cars for sale
  List<Car> carShop = [
    Car(
      name: 'Alfa Romeo',
      price: '900',
      imagePath: 'lib/image/alfaromeo.png',
      description: 'Alfa Romeo - Designed to Race',
    ),

    Car(
      name: 'Aston Martin',
      price: '800',
      imagePath: 'lib/image/astonmartin.png',
      description: 'Aston Martin - Driven by the core belief that energy is opportunity',
    ),

    Car(
      name: 'Honda',
      price: '700',
      imagePath: 'lib/image/honda.png',
      description: 'Honda - The Power of Dreams, How we move you',
    ),

    Car(
      name: 'Red Bull',
      price: '600',
      imagePath: 'lib/image/redbull.png',
      description: 'Red Bull gives you wings',
    ),

    Car(
      name: 'Renault',
      price: '500',
      imagePath: 'lib/image/renault.png',
      description: 'Renault - Passion for Life',
    ),
  ];

  //List of items in user's cart
  List<Car> usrCart = [];

  //Get list of cars for sale (a couple of methods)
  List<Car> getCarList()
  {
    return carShop;
  }

  //Get cart
  List<Car> getUsrCart()
  {
    return usrCart;
  }

  //Add items to cart
  void addItem(Car car)
  {
    usrCart.add(car);
    notifyListeners();
  }

  //Remove items to cart
  void removeItem(Car car)
  {
    usrCart.remove(car);
    notifyListeners();
  }
}