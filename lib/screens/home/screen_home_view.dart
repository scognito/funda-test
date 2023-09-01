import 'package:flutter/material.dart';
import 'package:funda_test/screens/home/apartment_list_item_view.dart';
import 'package:funda_test/screens/home/screen_home_viewmodel.dart';
import 'package:funda_test/styles.dart';
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
              callback: () => model.search(),
            );
          } else if (!model.hasData) {
            body = const Center(
              child: Text('WELCOME'),
            );
          } else if (!model.hasApartments()) {
            body = const Center(
              child: Text('NO RESULTS FOUND'),
            );
          } else {
            body = Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...model.apartmentIndex!.objects
                              .map(
                                (e) => ApartmentListItemView(apartment: e),
                              )
                              .toList()
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          style: kStyleParagraphP2,
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
                            onPressed: () => model.goToNextPage()),
                  ],
                ),
              ],
            );
          }

          return Scaffold(
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
                    padding: const EdgeInsets.all(16),
                    child: SearchBar(
                      hintText: 'Search an apartment',
                      onChanged: (s) => model.setSearchTerm(s),
                      controller: model.textEditingController,
                      trailing: [
                        !model.canSearch
                            ? IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {
                                  model.search();
                                },
                              )
                            : IconButton(
                                icon: const Icon(Icons.cancel_outlined),
                                onPressed: () {
                                  model.clearSearch();
                                },
                              ),
                      ],
                      onSubmitted: (text) {
                        model.searchTerm = text;
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
