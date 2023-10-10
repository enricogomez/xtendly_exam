import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/data/models/product_model.dart';
import 'package:xtendly_exam/presentation/widgets/product_card.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    required this.products,
    super.key,
  });

  final List<ProductModel> products;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int _itemCount = 8;
  bool isLoading = false;
  bool showLoadMore = true;

  void loadMore() {
    isLoading = true;
    setState(() {
      _itemCount += 4;
      isLoading = false;
      showLoadMore = _itemCount < widget.products.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth <= 600;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 50 : 100,
        horizontal: 20.w,
      ),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile ? 2 : 4,
              mainAxisSpacing: isMobile ? 0 : 20,
              crossAxisSpacing: isMobile ? 20 : 50,
              mainAxisExtent: isMobile ? 350 : 650,
            ),
            itemCount: _itemCount,
            itemBuilder: (ctx, index) {
              return ProductCard(
                product: widget.products[index],
              );
            },
          ),
          SizedBox(height: 2.w),
          if (showLoadMore)
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                backgroundColor: ColorName.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 15,
                ),
                elevation: 5,
                shadowColor: ColorName.black.withOpacity(0.9),
              ),
              onPressed: isLoading ? null : loadMore,
              child: isLoading
                  ? const CircularProgressIndicator()
                  : Text(
                      "More",
                      style: TextStyles.interMedium.copyWith(
                        fontSize: isMobile ? 16 : 24,
                      ),
                    ),
            ),
        ],
      ),
    );
  }
}
