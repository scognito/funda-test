import 'package:flutter/material.dart';
import 'package:funda_test/config/app_assets.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/config/app_text.dart';
import 'package:funda_test/screens/home/screen_home_viewmodel.dart';
import 'package:funda_test/widgets/apartment_list_item_view.dart';
import 'package:funda_test/widgets/retry_view.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ScreenHomeViewModel>(
      create: (_) => ScreenHomeViewModel(),
      child: Consumer<ScreenHomeViewModel>(
        builder: (context, model, child) {
          Widget body;

          if (model.isLoading) {
            body = const Center(
              child: CircularProgressIndicator(),
            );
          } else if (model.hasError) {
            body = RetryView(
              error: model.error,
              callback: () => model.search,
            );
          } else if (!model.hasData) {
            body = Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Assets.home),
              ),
            );
          } else if (!model.hasApartments()) {
            body = Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.notfound,
                  width: 128,
                ),
                const SizedBox(height: 16),
                const Text('Sorry, no results found')
              ],
            );
          } else {
            body = Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: model.apartmentIndex!.objects.length,
                      itemBuilder: (context, index) => ApartmentListItemView(
                        onTap: () => model.goToDetail(
                          model.apartmentIndex!.objects.elementAt(index),
                          context,
                        ),
                        apartment:
                            model.apartmentIndex!.objects.elementAt(index),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      model.previousPageLink == null
                          ? const SizedBox(
                              width: 32,
                            )
                          : IconButton(
                              iconSize: 32,
                              icon: const Icon(Icons.chevron_left),
                              onPressed: () => model.goToPreviousPage()),
                      Expanded(
                        child: GestureDetector(
                          child: Text(
                            '${model.totalResult} apartments found',
                            style: AppText.default14Regular
                                .copyWith(color: AppColors.mediumGrey),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () => model.debug(),
                        ),
                      ),
                      model.nextPageLink == null
                          ? const SizedBox(
                              width: 32,
                            )
                          : IconButton(
                              iconSize: 32,
                              icon: const Icon(Icons.chevron_right),
                              onPressed: () => model.goToNextPage(),
                            ),
                    ],
                  ),
                ],
              ),
            );
          }

          return Scaffold(
            backgroundColor: AppColors.blueSky,
            appBar: AppBar(
              title: const Text('Funda'),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
                    child: SearchBar(
                      key: const ValueKey('SearchBar'),
                      shape: MaterialStateProperty.all(
                        const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(1),
                      hintText: 'Search an apartment',
                      onChanged: (s) => model.setSearchTerm(s),
                      controller: model.textEditingController,
                      hintStyle:
                          MaterialStateProperty.all(AppText.default16Thin),
                      textStyle:
                          MaterialStateProperty.all(AppText.default16Regular),
                      trailing: [
                        !model.canSearch
                            ? IconButton(
                                icon: Icon(
                                  Icons.search,
                                  color: AppColors.lightGrey,
                                ),
                                onPressed: () {
                                  model.search();
                                },
                              )
                            : IconButton(
                                icon: Icon(
                                  Icons.clear,
                                  color: AppColors.lightGrey,
                                ),
                                onPressed: () {
                                  model.clearSearch();
                                },
                              ),
                      ],
                      onSubmitted: (text) {
                        model.searchTerm = text.trim();
                        model.search();
                      },
                    ),
                  ),
                  Expanded(child: body),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
