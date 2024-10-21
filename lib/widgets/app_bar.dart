import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        // 'assets/yt.png',
        'assets/yt.png',
        height: 20,
      ),
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        IconButton(icon: const Icon(Icons.account_circle), onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
