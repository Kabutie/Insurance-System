import 'package:cars_ms/models/insurance.dart';

class CartItem {
  Insurance insurance;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.insurance,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalPrice {
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (insurance.price + addonsPrice) * quantity;
  }
}
