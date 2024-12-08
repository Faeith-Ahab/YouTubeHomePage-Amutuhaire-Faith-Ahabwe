import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Transform.translate(
        offset: const Offset(-20.0, 0.0), // Adjusted the offset to move the image left
        child: Image.asset(
          'assets/yt.jpg',
          height: 70,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.cast, color: Colors.white, size: 20), // Thinner size for icon
          onPressed: () {},
        ),
        Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white, size: 20), // Thinner size for icon
              onPressed: () {},
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: const Text(
                  '3', // Badge number
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white, size: 20), // Thinner size for icon
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}




// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.black,
//       title: Image.asset(
//         'assets/yt.jpg',
//         height: 70,
//       ),
//       actions: [
        
//         IconButton(
//           icon: const Icon(Icons.cast, color: Colors.white),
//           onPressed: () {
            
//           },
//         ),
//         IconButton(
//           icon: const Icon(Icons.notifications, color: Colors.white),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: const Icon(Icons.search, color: Colors.white),
//           onPressed: () {},
//         ),
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
