import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_item.dart';
import '../models/car.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget
{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            const Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Monospace',
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20,),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUsrCart().length,
                itemBuilder: (context, index)
                {
                  //Get individual car
                  Car individualCar = value.getUsrCart()[index];

                  //Return the cart item
                  return CartItem(
                    car: individualCar,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}