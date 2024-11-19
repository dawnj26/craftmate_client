import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftmate_client/dashboard/shop/bloc/view_listing/view_listing_bloc.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:map_repository/map_repository.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:user_repository/user_repository.dart';

class ViewListingScreen extends StatelessWidget {
  const ViewListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'edit',
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete'),
                ),
              ];
            },
          ),
        ],
      ),
      body: BlocBuilder<ViewListingBloc, ViewListingState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
          const dividerHeight = 24.0;

          return ListView(
            children: [
              ImageCarousel(
                imageUrls: state.query.product.imageUrls,
                height: screenSize.height * 0.4,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameAndPrice(
                      name: state.query.product.name,
                      price: state.query.product.price,
                    ),
                    SendMessage(
                      onSend: () {},
                      onTextChanged: (text) {},
                    ),
                    const Divider(
                      height: dividerHeight,
                    ),
                    ListingSection(
                      title: 'Description',
                      child: Text(state.query.product.description),
                    ),
                    const Divider(
                      height: dividerHeight,
                    ),
                    ListingSection(
                      title: 'Seller Information',
                      child: SellerProfile(
                        seller: state.seller,
                      ),
                    ),
                    const Divider(
                      height: dividerHeight,
                    ),
                    ListingSection(
                      title: 'Location',
                      child: ListingLocation(
                        place: state.query.product.address,
                      ),
                    ),
                    const Divider(
                      height: dividerHeight,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ListingLocation extends StatelessWidget {
  const ListingLocation({
    super.key,
    required this.place,
  });

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(place.name),
        ),
        const SizedBox(width: 8),
        TextButton(
          onPressed: () {
            MapsLauncher.launchCoordinates(place.lat, place.lon);
          },
          child: const Text('View on maps'),
        ),
      ],
    );
  }
}

class SellerProfile extends StatelessWidget {
  const SellerProfile({
    super.key,
    required this.seller,
  });

  final User seller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasProfileImage = seller.image != null;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage:
                hasProfileImage ? NetworkImage(seller.image!) : null,
            child: hasProfileImage ? null : Text(seller.name[0].toUpperCase()),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                seller.name,
                style: theme.textTheme.labelLarge,
              ),
              Text('Joined in ${seller.createdAt?.year}'),
            ],
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(UserProfilePage.route(seller.id));
            },
            child: const Text('View profile'),
          ),
        ],
      ),
    );
  }
}

class ListingSection extends StatelessWidget {
  const ListingSection({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium,
        ),
        child,
      ],
    );
  }
}

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
    required this.onSend,
    this.onTextChanged,
  });

  final void Function() onSend;
  final void Function(String)? onTextChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.send_rounded),
              const SizedBox(width: 4),
              Text(
                'Send seller a message',
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type your message here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onChanged: onTextChanged,
                ),
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: onSend,
                child: const Text('Send'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({
    super.key,
    required this.name,
    required this.price,
  });

  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: theme.textTheme.titleLarge,
        ),
        Text(_formatPrice(price)),
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

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    super.key,
    required this.imageUrls,
    required this.height,
  });

  final List<String> imageUrls;
  final double height;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late final CarouselSliderController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _controller = CarouselSliderController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: widget.imageUrls.length,
          itemBuilder: (context, index, realIndex) {
            return Image.network(
              widget.imageUrls[index],
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            );
          },
          options: CarouselOptions(
            height: widget.height,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(4.0),
                child: Wrap(
                  children: List.generate(
                    widget.imageUrls.length,
                    (index) => GestureDetector(
                      onTap: () {
                        _controller.animateToPage(index);
                      },
                      child: PageIndicator(
                        isSelected: index == _currentIndex,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    const size = 6.0;

    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
      ),
    );
  }
}
