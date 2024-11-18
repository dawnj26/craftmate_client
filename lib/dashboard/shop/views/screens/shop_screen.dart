import 'package:craftmate_client/dashboard/shop/bloc/shop/shop_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/add_listing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shop_repository/shop_repository.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_2)),
        ],
        bottom: const ShopBottom(),
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return CustomScrollView(
            slivers: [
              const SliverLabel(
                labelText: "Today's picks",
              ),
              ListingGrid(
                products: state.products,
              ),
            ],
          );
        },
      ),
    );
  }
}

class ListingGrid extends StatelessWidget {
  const ListingGrid({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 8,
        childAspectRatio: 0.9,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final product = products[index];
          return ListingTile(
            product: product,
          );
        },
        childCount: products.length,
      ),
    );
  }
}

class SliverLabel extends StatelessWidget {
  const SliverLabel({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          labelText,
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}

class ListingTile extends StatelessWidget {
  const ListingTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Image.network(
            product.imageUrls.first,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '${_formatPrice(product.price)} · ${product.name}',
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }

  String _formatPrice(double price) {
    final formatter = NumberFormat.currency(
      symbol: '₱',
      decimalDigits: 0,
      locale: 'en_PH',
    );
    return formatter.format(price);
  }
}

class ShopBottom extends StatelessWidget implements PreferredSizeWidget {
  const ShopBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
        child: Row(
          children: [
            Expanded(
              child: FilledButton.icon(
                onPressed: () {
                  Navigator.of(context).push(AddListingPage.route());
                },
                label: const Text('Sell'),
                icon: const Icon(Icons.add),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {},
                label: const Text('Categories'),
                icon: const Icon(Icons.category),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(54);
}
