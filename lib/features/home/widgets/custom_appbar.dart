import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// ==================== Custom AppBar ====================
class CustomAAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  final String? titleImageUrl;
  final String? rightIconUrl;
  final VoidCallback? onRightIconTap;

  const CustomAAppBar({
    super.key,
    this.titleText,
    this.titleImageUrl,
    this.rightIconUrl,
    this.onRightIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF5F5F0),
      elevation: 0,
      centerTitle: true,
      title: titleImageUrl != null
          ? Image.network(
              titleImageUrl!,
              height: 40,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image),
            )
          : Text(titleText ?? ''),
      actions: [
        if (rightIconUrl != null)
          IconButton(
            onPressed: onRightIconTap ?? () {},
            icon: Image.network(
              rightIconUrl!,
              height: 24,
              width: 24,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.notifications),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
