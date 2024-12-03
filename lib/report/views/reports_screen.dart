import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/report/bloc/report/report_bloc.dart';
import 'package:craftmate_client/report/views/report_review/report_review_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:report_repository/report_repository.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
      ),
      body: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          if (state.reports.isEmpty) {
            return const EmptyMessage(emptyMessage: 'No reports found');
          }

          return ListView.builder(
            itemCount: state.reports.length,
            itemBuilder: (context, index) {
              final query = state.reports[index];

              return InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    ReportReviewPage.route(query.id),
                  );
                  if (!context.mounted) return;
                  context.read<ReportBloc>().add(const ReportEvent.started());
                },
                child: ReportTile(query: query),
              );
            },
          );
        },
      ),
    );
  }
}

class ReportTile extends StatelessWidget {
  const ReportTile({super.key, required this.query});

  final QueryReport query;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.report),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        query.reported.name,
                        style: theme.textTheme.titleMedium,
                      ),
                      if (query.reported.createdAt != null)
                        Text(
                          ' • ${_formatDate(query.reported.createdAt!)}',
                          style: theme.textTheme.labelSmall,
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      ColoredLabel(
                        labelText: _capitalize(query.report.reason.name),
                      ),
                      const SizedBox(width: 8),
                      ColoredLabel(
                        labelText:
                            query.report.isReviewed ? 'Reviewed' : 'Pending',
                      ),
                      const SizedBox(width: 8),
                      if (query.reported.deletedAt != null)
                        const ColoredLabel(labelText: 'Banned'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right_rounded),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  String _formatDate(DateTime date) => DateFormat.yMMMd().format(date);
}

class ColoredLabel extends StatelessWidget {
  const ColoredLabel({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: theme.colorScheme.secondaryContainer,
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        labelText,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSecondaryContainer,
        ),
      ),
    );
  }
}
