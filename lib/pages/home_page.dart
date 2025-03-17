import 'package:cars_ms/components/my_insurance_tile.dart';
import 'package:cars_ms/models/insurance.dart';
import 'package:cars_ms/models/insurance_options.dart';
import 'package:cars_ms/pages/insurance_page.dart';
import 'package:flutter/material.dart';
import 'package:cars_ms/components/my_current_location.dart';
import 'package:cars_ms/components/my_description_box.dart';
import 'package:cars_ms/components/my_drawer.dart';
import 'package:cars_ms/components/my_sliver_app_bar.dart';
import 'package:cars_ms/components/my_tab_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: InsuranceCategory.values.length, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of insurance items that belong to a specific category
  List<Insurance> _filterMenuByCategory(InsuranceCategory category, List<Insurance> fullMenu) {
    return fullMenu.where((insurance) => insurance.category == category).toList();
  }

  // return list of insurance in a given category
  List<Widget> getInsuranceInThisCategory(List<Insurance> fullMenu) {
    return InsuranceCategory.values.map((category) {

      // get category menu
      List<Insurance> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            // get individual insurance
            final insurance = categoryMenu[index];

            // return insurance tile UI
            return InsuranceTile(
                insurance: insurance,
                onTap: () => Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context) => InsurancePage(insurance: insurance),
                  ),
                ),
            );
          },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current location
                const MyCurrentLocation(),

                // description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<InsuranceOptions>(
          builder: (context, insuranceOptions, child) => TabBarView(
              controller: _tabController,
              children: getInsuranceInThisCategory(insuranceOptions.menu),
          ),
        ),
      ),
    );
  }
}
