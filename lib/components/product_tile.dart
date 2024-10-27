import 'package:flutter/material.dart';
import '../models/car.dart';

class ProductTile extends StatelessWidget
{
  Car car;
  void Function()? onTap;
  ProductTile({
    super.key,
    required this.car,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      width: 280.0,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Car pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(car.imagePath),
          ),

          //Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(
              child: Text(
                car.description,
                style: TextStyle(
                  fontFamily: 'Monospace',
                  color: Colors.grey[400],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          //Price + details
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Car name
                    Text(
                      car.name,
                      style: TextStyle(
                        fontFamily: 'Monospace',
                        fontSize: 24.0,
                        color: Colors.red[600],
                      ),
                    ),

                    const SizedBox(height: 5.0,),

                    //Price
                    Text(
                      '\$'+car.price,
                      style: TextStyle(
                        fontFamily: 'Monospace',
                        fontSize: 14.0,
                        color: Colors.red[600],
                      ),
                    ),
                  ],
                ),

                //Plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(12.0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.red[600],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Button to add to cart
        ],
      ),
    );
  }
}