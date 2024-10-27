import 'package:ecommerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/car.dart';

class CartItem extends StatefulWidget
{
  Car car;
  CartItem({
    super.key,
    required this.car,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem>
{
  //Remove item from cart
  void removeItem()
  {
    Provider.of<Cart>(context, listen: false).removeItem(widget.car);
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.only(bottom: 10.0),

      child: ListTile(
        leading: Image.asset(widget.car.imagePath,),

        title: Text(
          widget.car.name,
          style: TextStyle(
            fontFamily: 'Monospace',
            color: Colors.grey[400],
          ),
        ),

        subtitle: Text(
          '\$'+widget.car.price,
          style: TextStyle(
            fontFamily: 'Monospace',
            color: Colors.grey[400],
          ),
        ),

        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItem,
          color: Colors.red[600],
        ),
      ),
    );
  }
}