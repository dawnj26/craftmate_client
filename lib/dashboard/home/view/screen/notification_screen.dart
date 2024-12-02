import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/bloc/notif_click_bloc.dart' as n;
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/notifications/bloc/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_repository/notification_repository.dart';
import 'package:user_repository/user_repository.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final curUser = context.read<AuthBloc>().state.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Initialized() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          if (state.notifications.isEmpty) {
            return const EmptyMessage(emptyMessage: 'No notifications');
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FilterChip(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(state.filter.label),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onSelected: (_) => _handleFilter(context, state.filter),
                  selected: true,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.notifications.length,
                  itemBuilder: (context, index) {
                    final notification = state.notifications[index];
                    return NotificationTile(
                      notification: notification,
                      curUser: curUser,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _handleFilter(
    BuildContext context,
    NotificationDateFilter currentFilter,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (c) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: NotificationDateFilter.values
              .map(
                (filter) => ListTile(
                  leading: const Icon(Icons.filter_list),
                  title: Text(filter.label),
                  onTap: () {
                    if (filter == currentFilter) return;

                    context.read<NotificationBloc>().add(
                          NotificationEvent.filterChanged(filter),
                        );
                    Navigator.pop(context);
                  },
                  selected: filter == currentFilter,
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.notification,
    required this.curUser,
  });

  final CNotification notification;
  final User curUser;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        context.read<n.NotifClickBloc>().add(
              n.NotifClickEvent.notificationClicked(
                notification: notification,
                userId: curUser.id,
              ),
            );
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: _buildIcon(notification),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(notification.body),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                if (!notification.read)
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        onTap: () {
                          context.read<NotificationBloc>().add(
                                NotificationEvent.markNotificationAsRead(
                                  notification.id,
                                ),
                              );
                        },
                        child: const Text('Mark as read'),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Icon _buildIcon(CNotification notification) {
    logger.info(notification.type);
    switch (notification.type) {
      case 'chat':
        return const Icon(Icons.chat_outlined);
      case 'project':
        return const Icon(Icons.folder_outlined);
      case 'shop':
        return const Icon(Icons.shopping_cart_outlined);
      case 'user':
        return const Icon(Icons.person_outlined);
      default:
        return const Icon(Icons.notifications_outlined);
    }
  }
}
