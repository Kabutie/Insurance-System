import 'package:cars_ms/models/insurance_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Your Location"),
          content: const TextField(
            decoration: InputDecoration(hintText: "Enter  Address..."),
          ),
          actions: [
            // cancel button
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),

            // save button
            MaterialButton(
              onPressed: () {
                // update delivery address
                // String newAddress = textController.text;
                // context.read<InsuranceOptions>().updateDeliveryAddress(newAddress);
                Navigator.pop(context);
                // textController.clear();
              },
              child: const Text('Save'),
            ),
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                Consumer<InsuranceOptions>(
                    builder: (context, insuranceOptions, child) => Text(
                      insuranceOptions.deliveryAddress,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),

                // dropdown menu
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
