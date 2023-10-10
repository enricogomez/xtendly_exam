import 'package:flutter/material.dart';

import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/data/models/category_model.dart';
import 'package:xtendly_exam/data/models/product_model.dart';
import 'package:xtendly_exam/presentation/widgets/category_list.dart';
import 'package:xtendly_exam/presentation/widgets/custom_footer.dart';
import 'package:xtendly_exam/presentation/widgets/desktop_appbar.dart';
import 'package:xtendly_exam/presentation/widgets/hero_banner.dart';
import 'package:xtendly_exam/presentation/widgets/mobile_appbar.dart';
import 'package:xtendly_exam/presentation/widgets/mobile_drawer.dart';
import 'package:xtendly_exam/presentation/widgets/product_list.dart';
import 'package:xtendly_exam/presentation/widgets/sale_banner.dart';
import 'package:xtendly_exam/data/services/category_service.dart';
import 'package:xtendly_exam/data/services/product_service.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<ProductModel> products = [];

  Future<void> getCategories() async {
    final response = await CategoryService().getCategories();
    setState(() => categories = response);
  }

  Future<void> getProducts() async {
    final response = await ProductService().getProducts();
    setState(() => products = response);
  }

  @override
  void initState() {
    getCategories();
    getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth <= 600;

    return Scaffold(
      appBar: isMobile
          ? const MobileAppBar()
          : const DesktopAppBar() as PreferredSizeWidget,
      drawer: const MobileDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroBanner(),
            Container(
              color: ColorName.beige,
              padding: EdgeInsets.symmetric(
                vertical: isMobile ? 50 : 100,
                horizontal: 70,
              ),
              child: isMobile
                  ? CategoryList(categories: categories)
                  : Column(
                      children: [
                        CategoryList(categories: categories),
                        const SizedBox(height: 50),
                        SizedBox(
                          width: 800,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamcolaboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderitin voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officiadeserunt mollit anim id est laborum.',
                            style:
                                TextStyles.interMedium.copyWith(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
            ),
            const SaleBanner(),
            ProductList(products: products),
            const CustomFooter()
          ],
        ),
      ),
    );
  }
}
