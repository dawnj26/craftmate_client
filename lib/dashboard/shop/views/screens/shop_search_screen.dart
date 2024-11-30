import 'package:craftmate_client/dashboard/shop/bloc/shop_search/shop_search_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/shop_results_page.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopSearchScreen extends StatefulWidget {
  const ShopSearchScreen({super.key});

  @override
  State<ShopSearchScreen> createState() => _ShopSearchScreenState();
}

class _ShopSearchScreenState extends State<ShopSearchScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          decoration: const InputDecoration(
            hintText: 'Search products...',
            border: InputBorder.none,
          ),
          onChanged: (query) {
            context.read<ShopSearchBloc>().add(ShopSearchEvent.search(query));
          },
          onSubmitted: (query) {
            Navigator.push(context, ShopResultsPage.route(query));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              _controller.clear();
              context
                  .read<ShopSearchBloc>()
                  .add(const ShopSearchEvent.search(''));
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: BlocBuilder<ShopSearchBloc, ShopSearchState>(
        builder: (context, state) {
          switch (state) {
            case Initial():
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(height: 8),
                    Text(
                      'Search for products',
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              );
            case Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          if (state.results.isEmpty) {
            return const EmptyMessage(emptyMessage: 'No results found');
          }

          return ListView.builder(
            itemCount: state.results.length,
            itemBuilder: (context, index) {
              final search = state.results[index];
              return ListTile(
                leading: const Icon(Icons.search),
                title: Text(search.value),
                onTap: () {
                  Navigator.push(context, ShopResultsPage.route(search.value));
                },
              );
            },
          );
        },
      ),
    );
  }
}
