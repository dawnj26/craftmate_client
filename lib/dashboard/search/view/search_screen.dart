import 'package:craftmate_client/dashboard/search/view/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:search_repository/search_repository.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const CraftSearch(),
                  const Gap(24),
                  Text(
                    'Explore',
                    style: theme.textTheme.titleLarge,
                  ),
                ]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    // Replace with your grid item widget
                    return Container(
                      color: Colors.grey[200],
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    );
                  },
                  childCount: 10, // Replace with your actual item count
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CraftSearch extends StatelessWidget {
  const CraftSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      viewOnSubmitted: (value) {
        if (value.isEmpty) {
          return;
        }
        Navigator.push(
          context,
          ResultScreen.route(value),
        );
      },
      builder: (context, controller) {
        return SearchBar(
          onTap: controller.openView,
          onChanged: (value) {
            if (!controller.isOpen) {
              controller.openView();
            }
          },
          controller: controller,
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16.0),
          ),
          leading: const Icon(Icons.search),
          hintText: 'Search for a craft or people',
        );
      },
      suggestionsBuilder: (context, controller) async {
        final query = controller.text.trim();
        if (query.isEmpty) {
          return <Widget>[
            const ListTile(
              leading: Icon(Icons.search),
              title: Text('Search for a craft or people'),
            ),
          ];
        }

        final suggestions =
            await context.read<SearchRepository>().searchSuggestions(query);

        return suggestions.map(
          (suggestion) {
            return ListTile(
              leading: const Icon(Icons.search),
              title: Text(suggestion.value),
              onTap: () {
                Navigator.push(
                  context,
                  ResultScreen.route(suggestion.value),
                );
              },
            );
          },
        );
      },
    );
  }
}
