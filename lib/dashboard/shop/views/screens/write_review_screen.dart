import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/write_review/write_review_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class WriteReviewScreen extends StatelessWidget {
  const WriteReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Write a review'),
      ),
      body: BlocBuilder<WriteReviewBloc, WriteReviewState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return ListView(
            padding: const EdgeInsets.all(12),
            children: [
              _Header(user: state.seller),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rating: ',
                    style: theme.textTheme.titleMedium,
                  ),
                  StarRating(
                    rating: state.rating,
                    onChanged: (rating) {
                      context
                          .read<WriteReviewBloc>()
                          .add(WriteReviewEvent.ratingChanged(rating));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12),
              BlocBuilder<WriteReviewBloc, WriteReviewState>(
                builder: (context, state) {
                  final isValid = switch (state) {
                    Invalid() => false,
                    _ => true,
                  };

                  final errText = isValid ? null : 'Review cannot be empty';

                  return TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a review',
                      border: const OutlineInputBorder(),
                      errorText: errText,
                    ),
                    onChanged: (value) {
                      context
                          .read<WriteReviewBloc>()
                          .add(WriteReviewEvent.reviewChanged(value));
                    },
                    minLines: 4,
                    maxLines: 6,
                  );
                },
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () {
                  context.read<WriteReviewBloc>().add(
                        WriteReviewEvent.ratingSubmitted(
                          context.read<AuthBloc>().state.user.id,
                        ),
                      );
                },
                child: const Text('Submit'),
              ),
            ],
          );
        },
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  const StarRating({super.key, required this.rating, this.onChanged});

  final int rating;
  final void Function(int)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          final isSelected = index < rating;

          return IconButton(
            icon: Icon(
              isSelected ? Icons.star : Icons.star_border,
              color: isSelected ? Colors.yellow : null,
            ),
            onPressed: () {
              onChanged?.call(index + 1);
            },
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final hasImage = user.image != null;

    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: hasImage ? NetworkImage(user.image!) : null,
          child: hasImage ? null : Text(user.name[0].toUpperCase()),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.name, style: theme.textTheme.labelLarge),
          ],
        ),
      ],
    );
  }
}
