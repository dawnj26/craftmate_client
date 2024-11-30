import 'package:craftmate_client/dashboard/shop/bloc/shop/shop_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/add_address_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/add_listing_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/categories_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/shop_profile_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/shop_search_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/view_listing_page.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:map_repository/map_repository.dart';
import 'package:shop_repository/shop_repository.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(ShopSearchPage.route());
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(ShopProfilePage.route());
            },
            icon: const Icon(Icons.person_2),
          ),
        ],
        bottom: const ShopBottom(),
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Initializing():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return RefreshIndicator(
            onRefresh: () async {
              final bloc = BlocProvider.of<ShopBloc>(context);
              final newState = bloc.stream.first;
              bloc.add(const ShopEvent.refreshed());
              await newState;
            },
            child: CustomScrollView(
              slivers: [
                SliverLabel(
                  labelText: "Nearby",
                  currentLocation: state.currentLocation,
                  onLocationChanged: (place, radius) {
                    context.read<ShopBloc>().add(
                          ShopEvent.currentLocationChanged(
                            place,
                            radius / 1000,
                          ),
                        );
                  },
                ),
                ListingGrid(
                  query: state.nearbyProducts,
                ),
                const SliverLabel(
                  labelText: "All Listings",
                ),
                ListingGrid(
                  query: state.products,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class ListingGrid extends StatelessWidget {
  const ListingGrid({
    super.key,
    required this.query,
  });

  final List<QueryProduct> query;

  @override
  Widget build(BuildContext context) {
    if (query.isEmpty) {
      return SliverToBoxAdapter(
        child: Column(
          children: [
            Assets.images.noDataTransparent.image(
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            const Text('No listings found'),
          ],
        ),
      );
    }

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 8,
        childAspectRatio: 0.9,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final product = query[index].product;
          return ListingTile(
            product: product,
            onTap: () {
              Navigator.of(context)
                  .push(ViewListingPage.route(query[index].id));
            },
          );
        },
        childCount: query.length,
      ),
    );
  }
}

class SliverLabel extends StatelessWidget {
  const SliverLabel({
    super.key,
    required this.labelText,
    this.currentLocation,
    this.onLocationChanged,
  }) : assert(
          (currentLocation == null && onLocationChanged == null) ||
              (currentLocation != null && onLocationChanged != null),
          'currentLocation and onLocationChanged must be null or both must be non-null',
        );

  final String labelText;
  final Place? currentLocation;
  final void Function(Place place, double radius)? onLocationChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    logger.info('Current location: $currentLocation');

    return SliverToBoxAdapter(
      child: Padding(
        padding: currentLocation != null
            ? const EdgeInsets.symmetric(horizontal: 12.0)
            : const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                labelText,
                style: theme.textTheme.titleMedium,
              ),
            ),
            if (currentLocation != null)
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      AddAddressPage.route(
                        onAddressSelected: onLocationChanged,
                        showCircle: true,
                      ),
                    );
                  },
                  child: Text(
                    currentLocation!.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ListingTile extends StatelessWidget {
  const ListingTile({
    super.key,
    required this.product,
    this.onTap,
  });

  final Product product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Column(
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
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
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
                onPressed: () {
                  Navigator.of(context).push(CategoriesPage.route());
                },
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
