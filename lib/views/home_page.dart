import 'package:flutter/material.dart';
import 'package:olx/constants/colors.dart';
import 'package:olx/extensions/buildcontext/loc.dart';
import 'package:provider/provider.dart';
import '../widgets/ad_item.dart';
import '../widgets/category_item.dart';
import 'package:olx/view_model/ad_view_model.dart';
import 'package:olx/view_model/category_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryViewModel()),
        ChangeNotifierProvider(create: (_) => AdViewModel()),
      ],
      child: Scaffold(
        backgroundColor: AppColor.darkBackgroundColor,
        appBar: AppBar(
          title: Text(context.loc.app_name),
          backgroundColor: AppColor.primaryGreenColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Search Field
              TextField(
                decoration: InputDecoration(
                  hintText: '${context.loc.search_input_decorator}...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: AppColor.primaryGreenColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: AppColor.primaryGreenColor),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Browse Categories
              Text(
                context.loc.browse_categories,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Consumer<CategoryViewModel>(
                builder: (context, viewModel, child) {
                  return SizedBox(
                    height: 88,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.categories.length,
                      itemBuilder: (context, index) {
                        final category = viewModel.categories[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: CategoryItem(
                            imagePath: category.imagePath,
                            label: category.label,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),

              // Ads Section
              Text(
                context.loc.sponsored_ads,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Consumer<AdViewModel>(
                  builder: (context, viewModel, child) {
                    return ListView.builder(
                      itemCount: viewModel.ads.length,
                      itemBuilder: (context, index) {
                        final ad = viewModel.ads[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 16), // Add space between ads
                          child: AdItem(ad: ad),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
