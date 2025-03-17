import 'package:cars_ms/components/my_quantity_selector.dart';
import 'package:cars_ms/models/cart_item.dart';
import 'package:cars_ms/models/insurance_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({
    super.key,
    required this.cartItem
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<InsuranceOptions>(
        builder: (context, insuranceOptions, child) => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // insurance image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        cartItem.insurance.imagePath,
                        height: 100,
                        width: 75,
                      ),
                    ),

                    const SizedBox(width: 7),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // insurance name
                        Text(cartItem.insurance.name),

                        // insurance price
                        Text(
                            'Ksh. ' + cartItem.insurance.price.toString(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),

                        const SizedBox(height: 10),

                        // increment and decrement quantity
                        QuantitySelector(
                            quantity: cartItem.quantity,
                            insurance: cartItem.insurance,
                            onIncrement: () {
                              insuranceOptions.addToCart(cartItem.insurance, cartItem.selectedAddons);
                            },
                            onDecrement: () {
                              insuranceOptions.removeFromCart(cartItem);
                            }
                        ),
                      ],
                    ),



                  ],
                ),
              ),


              // addons
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  children: cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FilterChip(
                            label: Row(
                              children: [
                                // addon name
                                Text(addon.name ),

                                //addon price
                                Text('Ksh. ' + (addon.price.toString())),
                              ],
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(
                                    color: Theme.of(context).colorScheme.primary
                                )
                            ),
                            onSelected: (value) {},
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    .toList(),
                ),
              ),
            ],
          ),
        )
    );
  }
}
