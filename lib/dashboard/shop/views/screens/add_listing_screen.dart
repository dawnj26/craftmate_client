import 'package:craftmate_client/dashboard/shop/views/pages/add_address_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddListingScreen extends StatelessWidget {
  const AddListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Listing'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Publish'),
          ),
        ],
      ),
      body: const AddListingForm(),
    );
  }
}

class AddListingForm extends StatefulWidget {
  const AddListingForm({super.key});

  @override
  State<AddListingForm> createState() => _AddListingFormState();
}

class _AddListingFormState extends State<AddListingForm> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _categoryController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John doe', style: theme.textTheme.labelLarge),
                // SizedBox(
                //   height: 4.0,
                // ),
                Row(
                  children: [
                    Text(
                      'Listing on Shop · ',
                      style: theme.textTheme.bodySmall,
                    ),
                    const Icon(Icons.shopping_bag_rounded, size: 16),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.add_a_photo),
                iconSize: 32,
              ),
              const SizedBox(height: 4),
              const Text('Add a photo'),
            ],
          ),
        ),
        ListingField(
          controller: _titleController,
          labelText: 'Title',
        ),
        const SizedBox(height: 16),
        ListingField(
          controller: _descriptionController,
          labelText: 'Description',
          maxLines: 5,
          minLines: 3,
          helperText: 'Optional',
        ),
        const SizedBox(height: 16),
        ListingField(
          controller: _priceController,
          labelText: 'Price',
          number: true,
        ),
        const SizedBox(height: 16),
        ListingField(
          controller: _categoryController,
          hintText: 'Category',
          readOnly: true,
          suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
          onTap: () {},
        ),
        const Divider(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Location', style: theme.textTheme.labelLarge),
                const SizedBox(height: 4),
                Text('Philippines', style: theme.textTheme.bodyLarge),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(AddAddressPage.route());
              },
              child: const Text('Change'),
            ),
          ],
        ),
      ],
    );
  }
}

class ListingField extends StatelessWidget {
  const ListingField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.maxLines = 1,
    this.minLines,
    this.number = false,
    this.readOnly = false,
    this.focusNode,
    this.onTap,
    this.suffixIcon,
    this.helperText,
  });

  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final int maxLines;
  final int? minLines;
  final bool number;
  final bool readOnly;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: const OutlineInputBorder(),
        helperText: helperText,
      ),
      maxLines: maxLines,
      minLines: minLines,
      keyboardType: number ? TextInputType.number : null,
      inputFormatters: number ? [FilteringTextInputFormatter.digitsOnly] : null,
      readOnly: readOnly,
      onTap: onTap,
    );
  }
}
