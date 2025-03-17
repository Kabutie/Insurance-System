// insurance Item
class Insurance {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final InsuranceCategory category;
  List<Addon> availableAddons;

  Insurance({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// Insurance categories
enum InsuranceCategory {
  private,
  commercial,
  thirdParty,
  fleet,
  payAsYouDrive,
}

// Insurance addons
class Addon{
  String name;
  double price;


  Addon({
    required this.name,
    required this.price,
  });
}