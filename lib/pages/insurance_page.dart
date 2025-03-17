import 'package:cars_ms/components/my_button.dart';
import 'package:cars_ms/models/insurance.dart';
import 'package:cars_ms/models/insurance_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InsurancePage extends StatefulWidget {
  final Insurance insurance;
  final Map<Addon, bool> selectedAddons = {};

  InsurancePage({
    super.key,
    required this.insurance,
  }) {
    // initialize selected addons to be false
    for (Addon addon in insurance.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage> {

  // method to add to cart
  void addToCart(Insurance insurance, Map<Addon, bool> selectedAddons){
    // close the current food page to go back to menu
    Navigator.pop(context);

    // format the selected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.insurance.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    // add to cart
    context.read<InsuranceOptions>().addToCart(insurance, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // insurance image
            Image.asset(widget.insurance.imagePath),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // insurance name
                  Text(
                    widget.insurance.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  // insurance price
                  Text(
                    'Ksh. ' + widget.insurance.price.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // insurance description
                  Text(widget.insurance.description),

                  const SizedBox(height: 10),

                  Divider(color: Theme.of(context).colorScheme.secondary),

                  const SizedBox(height: 10),

                  // addons
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.insurance.availableAddons.length,
                      itemBuilder: (context, index){
                        // get individual addon
                        Addon addon = widget.insurance.availableAddons[index];

                        // return checkbox UI
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            'Ksh. ' + addon.price.toString(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),


          // button -> add to cart
          MyButton(
            onTap: () => addToCart(widget.insurance, widget.selectedAddons),
            text: "Add to Cart"
          ),

            const SizedBox(height: 25),

          ],
        ),
      ),
    );

  }
}
