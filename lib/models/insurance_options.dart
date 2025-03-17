import 'package:cars_ms/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'insurance.dart';

class InsuranceOptions extends ChangeNotifier {
  // list insurance categories
  final List<Insurance> _menu = [
    // private car insurance
    Insurance(
        name: "Comprehensive Insurance",
        description: "Provides coverage for third-party liabilities and damages to the policyholder's vehicle due to accidents, theft, natural disasters, or vandalism.",
        imagePath: "lib/img/private_car/private5.png",
        price: 60000,
        category: InsuranceCategory.private,
        availableAddons: [
          Addon(name: "Personal coverage: ", price: 50000),
          Addon(name: "Passenger coverage: ", price: 25000),
          Addon(name: "non-commercial purposes: ", price: 30000)
        ],
    ),
    Insurance(
      name: "Collision coverage",
      description: "Covers repair or replacement costs for the policyholder’s vehicle in case of an accident, regardless of fault.",
      imagePath: "lib/img/private_car/private1.jpeg",
      price: 50000,
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Passenger coverage: ", price: 33000),
        Addon(name: "personal coverage: ", price: 39000)
      ],
    ),
    Insurance(
      name: "Personal-Injury Protection",
      description: "Covers medical expenses for the policyholder and passengers, regardless of fault.",
      imagePath: "lib/img/private_car/private2.jpg",
      price: 45000,
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Personal accident coverage: ", price: 42000),
        Addon(name: "Commercial purposes: ", price: 31000),
        Addon(name: "non-commercial purposes: ", price: 31000)
      ],
    ),
    Insurance(
      name: "Uninsured Motorist Coverage",
      description: "Provides coverage if the policyholder is hit by a driver with insufficient or no insurance.",
      imagePath: "lib/img/private_car/private3.jpeg",
      price: 65000,
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "commercial coverage: ", price: 27000),
        Addon(name: "non-commercial purposes: ", price: 29000)
      ],
    ),
    Insurance(
      name: "Engine Protection Cover",
      description: "Covers damages to the engine and its components, often excluded in standard policies.",
      imagePath: "lib/img/private_car/private4.jpeg",
      price: 90000,
      category: InsuranceCategory.private,
      availableAddons: [
        Addon(name: "Modified Engines: ", price: 150000),
        Addon(name: "New motor: ", price: 120000)
      ],
    ),


    // commercial insurance
    Insurance(
      name: "Commercial Insurance",
      description: "For vehicles used for business purposes (e.g., delivery trucks, taxis, or ride-sharing services).",
      imagePath: "lib/img/commercial/com1.png",
      price: 72000,
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "coverage for cargo: ", price: 100000),
        Addon(name: "passengers coverage: ", price: 50000)
      ],
    ),
    Insurance(
      name: "Roadside-Assistance Coverage",
      description: "Provides help for breakdowns, towing, fuel delivery, or flat tire repair.",
      imagePath: "lib/img/commercial/com2.jpg",
      price: 30000,
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Flatbed: ", price: 90000),
        Addon(name: "Breakdown & towing: ", price: 40000)
      ],
    ),
    Insurance(
      name: "Key Replacement Cover",
      description: "Covers cost associated with losing or replacing keys.",
      imagePath: "lib/img/commercial/com3.jpg",
      price: 10000,
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Key Programming: ", price: 7000),
        Addon(name: "Duplicate Key: ", price: 5000)
      ],
    ),
    Insurance(
      name: "Passenger Cover",
      description: "Offers personal accident insurance for passengers in the vehicle.",
      imagePath: "lib/img/commercial/com4.png",
      price: 20000,
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Each passenger: ", price: 10000),
        Addon(name: "Medical treatment: ", price: 20000),

      ],
    ),
    Insurance(
      name: "Temporary Insurance",
      description: "Provides coverage for a limited duration, typically from a few days to a few months.",
      imagePath: "lib/img/commercial/com5.jpg",
      price: 10000,
      category: InsuranceCategory.commercial,
      availableAddons: [
        Addon(name: "Change to Yearly: ", price: 50000),
        Addon(name: "Change to Monthly: ", price: 5000),
      ],
    ),


    // 3rd party insurance
    Insurance(
      name: "3rd Party Insurance",
      description: "Covers damages or injuries caused to a third party (person, vehicle, or property).",
      imagePath: "lib/img/third_party/third1.jpg",
      price: 40000,
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "policyholder's vehicle: ", price: 55000),
        Addon(name: "policyholder's passenger: ", price: 65000),
      ],
    ),
    Insurance(
      name: "Vehicle Damage Insurance",
      description: "Covers damage caused to another person’s property (e.g., vehicle, house, or shop).",
      imagePath: "lib/img/third_party/third2.jpg",
      price: 45000,
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "policyholder's vehicle: ", price: 55000),
        Addon(name: "policyholder's passenger: ", price: 65000),      ],
    ),
    Insurance(
      name: "Bodily Injury Insurance",
      description: "Covers medical expenses, legal liabilities, or compensation claims if someone is injured or dies due to the policyholder's vehicle.",
      imagePath: "lib/img/third_party/third3.jpeg",
      price: 42000,
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Cover medical expenses: ", price: 60000),
        Addon(name: "Cover compensation: ", price: 65000),      ],
    ),
    Insurance(
      name: "3rd-Party Only Insurance",
      description: "The basic mandatory type, covering property and injury liabilities but excluding the policyholder's vehicle.",
      imagePath: "lib/img/third_party/third4.jpg",
      price: 50000,
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Legal Expense Cover: ", price: 50000),
        Addon(name: "3rd party Passenger Cover: ", price: 30000),
      ],
    ),
    Insurance(
      name: "3rd-Party Insurance",
      description: "The basic mandatory type, covering property and injury liabilities but excluding the policyholder's vehicle.",
      imagePath: "lib/img/third_party/third1.jpg",
      price: 53000,
      category: InsuranceCategory.thirdParty,
      availableAddons: [
        Addon(name: "Legal Expense Cover: ", price: 50000),
        Addon(name: "3rd party Passenger Cover: ", price: 30000),
      ],
    ),


    // fleet insurance
    Insurance(
      name: "Liability Fleet",
      description: "Covers third-party property damage or injury caused by any vehicle in the fleet.",
      imagePath: "lib/img/fleet/fleet1.jpg",
      price: 25000,
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Cargo Coverage: ", price: 50000),
        Addon(name: "Replacement Vehicle Cover: ", price: 62000),
      ],
    ),
    Insurance(
      name: "Fleet Insurance:",
      description: "Covers both third-party liabilities and damage to vehicles in the fleet.",
      imagePath: "lib/img/fleet/fleet2.png",
      price: 44000,
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Tracking and Monitoring: ", price: 35000),
        Addon(name: "Driving Behavior Analytics: ", price: 30000),
      ],
    ),
    Insurance(
      name: "Specialized Insurance",
      description: "Tailored for specific industries (e.g., logistics, delivery, or taxi services) and may include cargo coverage or passenger liability.",
      imagePath: "lib/img/fleet/fleet3.jpeg",
      price:  90000,
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Cargo Coverage: ", price: 100000),
        Addon(name: "Replacement Vehicle Cover: ", price: 6000),
      ],
    ),
    Insurance(
      name: "No Claim Bonus (NCB)",
      description: "Retains the NCB even if one vehicle in the fleet makes a claim.",
      imagePath: "lib/img/fleet/fleet4.jpeg",
      price:  50000,
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Legal Expense Cover: ", price: 50000),
        Addon(name: "3rd party Passenger Cover: ", price: 30000),
      ],
    ),
    Insurance(
      name: "Usage-Based Insurance",
      description: "Premiums depend on driving behavior, tracked via telematics devices or apps.",
      imagePath: "lib/img/fleet/fleet5.png",
      price:  103000,
      category: InsuranceCategory.fleet,
      availableAddons: [
        Addon(name: "Total Fleet Cover: ", price: 150000),
      ],
    ),

    // pay-as-you-drive insurance
    Insurance(
      name: "Pay-As-You-Drive",
      description: "Depend on the actual mileage driven by the policyholder.",
      imagePath: "lib/img/drive/v5.jpg",
      price:  45000,
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Zero Depreciation Cover: ", price: 33000),
        Addon(name: "High Depreciation Cover: ", price: 69000),
      ],
    ),
    Insurance(
      name: "Distance-Based Insurance:",
      description: "Charges premiums based on total miles or kilometers driven.",
      imagePath: "lib/img/drive/v4.jpg",
      price:  115000,
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Accident Forgiveness:", price: 88000),
        Addon(name: "Safe Driving Rewards:", price: 102000),
      ],
    ),
    Insurance(
      name: "Behavior-Based Insurance:",
      description: "Uses telematics to monitor driving habits, including speed, braking, and acceleration, to determine premiums.",
      imagePath: "lib/img/drive/v3.jpeg",
      price:  78000,
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Breakdown Assistance: ", price: 55000),
        Addon(name: "Pay-How-You-Drive: ", price: 48000),
      ],
    ),
    Insurance(
      name: "Hybrid PAYD Insurance",
      description: " Combines distance and behavior monitoring for premium calculations.",
      imagePath: "lib/img/drive/v2.jpeg",
      price:  49500,
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Total Fleet Cover: ", price: 150000),
        Addon(name: "Pay-How-You-Drive: ", price: 48000),
      ],
    ),
    Insurance(
      name: "Seasonal Coverage",
      description: "Allows activation of coverage during specific periods when the vehicle is used more frequently.",
      imagePath: "lib/img/drive/v1.jpg",
      price:  54000,
      category: InsuranceCategory.payAsYouDrive,
      availableAddons: [
        Addon(name: "Glass and Windscreen Cover: ", price: 61000),
        Addon(name: "Scratches and Bodywork: ", price: 20000),
      ],
    ),

  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address
  String _deliveryAddress = 'Nairobi';

  /*

  GETTERS

   */

  List<Insurance> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  OPERATIONS

  */


  // add to cart
  void addToCart(Insurance insurance, List<Addon> selectedAddons) {
    // see if there is a cart item with the same insurance and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the insurance items are the same
      bool isSameInsurance = item.insurance == insurance;

      // check if the list of selected addons are the same
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
    return isSameInsurance && isSameAddons;
    });

    // if item already exists, increase its quantity
    cartItem.quantity++;
      notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if(_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for(CartItem cartItem in _cart) {
      double itemTotal = cartItem.insurance.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in the cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart) {
      totalItemCount  += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear the cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*

  HELPERS

  */
  // generate a receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.insurance.name} - ${_formatPrice(cartItem.insurance.price)}");
      if (cartItem.selectedAddons.isNotEmpty){
        receipt
          .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();

  }

  // format double value into money
  String _formatPrice(double price){
    return "Ksh. " + price.toStringAsFixed(2);
  }

  // format list addons into a string summary
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}