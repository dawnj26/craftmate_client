import 'package:craftmate_client/dashboard/shop/bloc/shop_reviews/shop_reviews_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

class ShopReviewsScreen extends StatelessWidget {
  const ShopReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('All reviews'),
      ),
      body: BlocBuilder<ShopReviewsBloc, ShopReviewsState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          final ratingCount = state.reviews.length;
          final rating = ratingCount == 0
              ? 0.0
              : state.reviews.fold(
                    0,
                    (previousValue, element) =>
                        previousValue + element.review.rating,
                  ) /
                  ratingCount;
          // percentage of each rating
          final ratings = List.generate(5, (index) {
            final rating = state.reviews.where(
              (element) => element.review.rating == index + 1,
            );
            return ratingCount == 0 ? 0.0 : rating.length / ratingCount;
          });

          // count of each rating

          final ratingsCount = List.generate(5, (index) {
            final rating = state.reviews.where(
              (element) => element.review.rating == index + 1,
            );
            return rating.length;
          });

          return ListView(
            padding: const EdgeInsets.all(12),
            children: [
              Text(
                'Seller ratings',
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 4),
              SellerRating(
                rating: rating,
                count: ratingCount,
              ),
              const SizedBox(height: 12),
              IndividualRatings(
                ratings: ratings,
                ratingsCount: ratingsCount,
              ),
              const Divider(
                thickness: 2,
                height: 32,
              ),
              Text(
                'Seller reviews ($ratingCount)',
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Column(
                children: state.reviews
                    .map(
                      (review) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: SellerReview(
                          qReview: review,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class SellerReview extends StatelessWidget {
  const SellerReview({
    super.key,
    required this.qReview,
  });

  final QueryReview qReview;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Reviewer(
          user: qReview.user,
          date: qReview.review.createdAt ?? DateTime.now(),
        ),
        const SizedBox(height: 8),
        RatingBar.builder(
          initialRating: qReview.review.rating.toDouble(),
          minRating: 1,
          itemSize: 20,
          allowHalfRating: true,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star_rounded,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(height: 8),
        Text(
          qReview.review.review,
        ),
        if (qReview.review.imagesPath.isNotEmpty) ...[
          const SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: Builder(
              builder: (context) {
                final scrollController = ScrollController();

                return Scrollbar(
                  controller: scrollController,
                  child: ListView.separated(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: qReview.review.imagesPath.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => _viewImage(context, index),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            qReview.review.imagesPath[index],
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }

  void _viewImage(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return ZoomPhoto(
          imageUrl: qReview.review.imagesPath[index],
        );
      },
    );
  }
}

class Reviewer extends StatelessWidget {
  const Reviewer({super.key, required this.user, required this.date});

  final User user;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final hasProfileImage = user.image != null;

    final theme = Theme.of(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: hasProfileImage ? NetworkImage(user.image!) : null,
          child: hasProfileImage ? null : Text(user.name[0].toUpperCase()),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: theme.textTheme.labelLarge,
            ),
            Text(
              _formatDate(date),
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    final formatter = DateFormat('MMM dd, yyyy');
    return formatter.format(date);
  }
}

class SellerRating extends StatelessWidget {
  const SellerRating({
    super.key,
    required this.rating,
    required this.count,
  });

  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        RatingBar.builder(
          initialRating: rating,
          minRating: 1,
          itemSize: 24,
          allowHalfRating: true,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star_rounded,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(width: 8),
        Text(
          '($count)',
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}

class IndividualRatings extends StatelessWidget {
  const IndividualRatings({
    super.key,
    required this.ratings,
    required this.ratingsCount,
  });

  final List<double> ratings;
  final List<int> ratingsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BarStar(
          percentage: ratings[4],
          label: '5 stars',
          count: ratingsCount[4],
        ),
        const SizedBox(height: 4),
        BarStar(
          percentage: ratings[3],
          label: '4 stars',
          count: ratingsCount[3],
        ),
        const SizedBox(height: 4),
        BarStar(
          percentage: ratings[2],
          label: '3 stars',
          count: ratingsCount[2],
        ),
        const SizedBox(height: 4),
        BarStar(
          percentage: ratings[1],
          label: '2 stars',
          count: ratingsCount[1],
        ),
        const SizedBox(height: 4),
        BarStar(
          percentage: ratings[0],
          label: '1 stars',
          count: ratingsCount[0],
        ),
      ],
    );
  }
}

class BarStar extends StatelessWidget {
  const BarStar({
    super.key,
    required this.percentage,
    required this.label,
    required this.count,
  });

  final double percentage;
  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          label,
          style: theme.textTheme.labelLarge,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LinearProgressIndicator(
            value: percentage,
            backgroundColor: theme.colorScheme.surfaceContainer,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$count',
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
