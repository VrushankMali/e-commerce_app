import 'dart:ui';
import 'package:ecommerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/product_tile.dart';
import '../models/car.dart';

class ShopPage extends StatefulWidget
{
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
{
  //Add car to cart
  void addItem(Car car)
  {
    Provider.of<Cart>(context, listen: false).addItem(car);

    //Alert the user,car added to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Successfully Added!',
          style: TextStyle(
            fontFamily: 'Monospace',
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 66.0),
          child: Text(
            'Check your cart',
            style: TextStyle(
              fontFamily: 'Monospace',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //Search Bar
        Container(
          padding: const EdgeInsets.all(13.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Colors.red[600],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(
                  fontFamily: 'Monospace',
                ),
              ),
              Icon(Icons.search),
            ],
          ),
        ),

        //Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'And It\'s Lights Out And Away We Go',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Monospace',
              color: Colors.grey[600],
            ),
          ),
        ),

        //Hot Picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Monospace',
                  color: Colors.black,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monospace',
                  color: Colors.red[600],
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 20,),

        //List of products
        Expanded(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch, // Enables touch scrolling
                PointerDeviceKind.mouse, // Enables mouse wheel scrolling
              },
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index)
              {
                //Get a car form the list
                Car car = value.getCarList()[index];

                //Create a car
                /*Car car = Car(
                  name: 'Red Bull',
                  price: '100',
                  imagePath: 'lib/image/redbull.png',
                  description: 'RedBull gives you wings.',
                );*/

                //Return the car;
                return ProductTile(
                  car: car,
                  onTap: () => addItem(car),
                );
              },
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Divider(color: Colors.grey[400],),
        )
      ],
    ),);
  }
}