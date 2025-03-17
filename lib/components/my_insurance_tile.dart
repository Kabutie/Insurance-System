import 'package:flutter/material.dart';
import '../models/insurance.dart';


class InsuranceTile extends StatelessWidget {
  final Insurance insurance;
  final void Function()? onTap;

  const InsuranceTile({
    super.key,
    required this.insurance,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // text insurance details
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(insurance.name),
                        Text(
                            'Ksh.' + insurance.price.toString(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                            insurance.description,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary,
                            ),
                        ),
                      ],
                    )
                ),

                const SizedBox(width: 15),

                // Insurance Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(insurance.imagePath, height: 120),
                ),
              ],
            ),
          )
        ),

        // divider
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
