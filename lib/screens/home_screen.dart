import 'package:flutter/material.dart';
import '../widgets/shorts.dart';  
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';
import '../widgets/app_bar.dart';

// CategoryChip widget
class CategoryChip extends StatefulWidget {
  final String category;
  const CategoryChip(this.category, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoryChipState createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Chip(
          label: Text(
            widget.category,
            style: TextStyle(
              color: _isHovered
                  ? Colors.black
                  : Colors.grey.withOpacity(0.3),
            ),
          ),
          backgroundColor: _isHovered
              ? Colors.white
              : const Color.fromARGB(255, 37, 36, 36),
          shape: const StadiumBorder(),
          side: const BorderSide(
            color: Color.fromARGB(255, 37, 36, 36),
            width: 1,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sections = [
      {
        'videos': [
          {
            'imagePath': 'assets/l_five.jpg',
            'avatarPath': 'assets/avi3.jpg',
            'title': 'Lofi',
            'views': '1M views • 1 day ago',
          },
          {
            'imagePath': 'assets/l_one.jpg',
            'avatarPath': 'assets/avi.jpg',
            'title': 'Anime',
            'views': '1M views • 1 day ago',
          },
          {
            'imagePath': 'assets/l_three.jpg',
            'avatarPath': 'assets/avi1.jpg',
            'title': 'Rain',
            'views': '1M views • 1 day ago',
          },
        ],
      },
      {
        'videos': [
          {
            'imagePath': 'assets/l_two.jpg',
            'avatarPath': 'assets/avi.jpg',
            'title': 'Soul',
            'views': '900K views • 2 days ago',
          },
          {
            'imagePath': 'assets/l_two.jpg',
            'avatarPath': 'assets/avi.jpg',
            'title': 'Pop',
            'views': '900K views • 2 days ago',
          },
          {
            'imagePath': 'assets/l_two.jpg',
            'avatarPath': 'assets/avi.jpg',
            'title': 'RnB',
            'views': '900K views • 2 days ago',
          },
        ],
      },
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Categories Section
              Container(
                margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryChip('All'),
                    CategoryChip('Music'),
                    CategoryChip('Playlists'),
                    CategoryChip('Mixes'),
                    CategoryChip('Live'),
                    CategoryChip('DJ Sets'),
                  ],
                ),
              ),

              // Shorts widget 
              const Shorts(),  

              // space
              const SizedBox(height: 16),

              // Iterate over sections
              for (var section in sections)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: section['videos'].length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 5.0,  // Reduced spacing
                        mainAxisSpacing: 5.0,    // Reduced spacing
                        childAspectRatio: 16 / 9,
                      ),
                      itemBuilder: (context, index) {
                        final video = section['videos'][index];
                        return VideoCard(
                          imageAsset: video['imagePath']!,
                          avatarAsset: video['avatarPath']!,
                          title: video['title']!,
                          views: video['views']!,
                        );
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      backgroundColor: Colors.black,
    );
  }
}



// import 'package:flutter/material.dart';
// import '../widgets/bottom_navigation_bar.dart';
// import '../widgets/video_card.dart';
// import '../widgets/app_bar.dart';


// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> sections = [
//       {
//         'videos': [
//           {
//             'imagePath': 'assets/l_five.jpg',
//             'avatarPath': 'assets/avi3.jpg',
//             'title': 'Lofi',
//             'views': '1M views • 1 day ago',
//           },
//           {
//             'imagePath': 'assets/l_one.jpg',
//             'avatarPath': 'assets/avi.jpg',
//             'title': 'Anime',
//             'views': '1M views • 1 day ago',
//           },
//           {
//             'imagePath': 'assets/l_three.jpg',
//             'avatarPath': 'assets/avi1.jpg',
//             'title': 'Rain',
//             'views': '1M views • 1 day ago',
//           },
//         ],
//       },
//       {
//         'videos': [
//           {
//             'imagePath': 'assets/l_two.jpg',
//             'avatarPath': 'assets/avi.jpg',
//             'title': 'Soul',
//             'views': '900K views • 2 days ago',
//           },
//           {
//             'imagePath': 'assets/l_two.jpg',
//             'avatarPath': 'assets/avi.jpg',
//             'title': 'Pop',
//             'views': '900K views • 2 days ago',
//           },
//           {
//             'imagePath': 'assets/l_two.jpg',
//             'avatarPath': 'assets/avi.jpg',
//             'title': 'RnB',
//             'views': '900K views • 2 days ago',
//           },
//         ],
//       },
//     ];

//     return Scaffold(
//       appBar: const CustomAppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Categories Section
//               Container(
//                 margin: const EdgeInsets.only(top: 8.0, bottom: 16.0),
//                 height: 50,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: const [
//                     CategoryChip('All'),
//                     CategoryChip('Music'),
//                     CategoryChip('Playlists'),
//                     CategoryChip('Mixes'),
//                     CategoryChip('Live'),
//                     CategoryChip('DJ Sets'),
//                   ],
//                 ),
//               ),
//               // Iterate over sections
//               for (var section in sections)
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     GridView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: section['videos'].length,
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 1,
//                         crossAxisSpacing: 16.0,
//                         mainAxisSpacing: 16.0,
//                         childAspectRatio: 16 / 9,
//                       ),
//                       itemBuilder: (context, index) {
//                         final video = section['videos'][index];
//                         return VideoCard(
//                           imageAsset: video['imagePath']!,
//                           avatarAsset: video['avatarPath']!,
//                           title: video['title']!,
//                           views: video['views']!,
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: const CustomBottomNavigationBar(),
//       backgroundColor: Colors.black,
//     );
//   }
// }

// // Category Chip Widget
// class CategoryChip extends StatefulWidget {
//   final String category;
//   const CategoryChip(this.category, {super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _CategoryChipState createState() => _CategoryChipState();
// }

// class _CategoryChipState extends State<CategoryChip> {
//   bool _isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: Chip(
//           label: Text(
//             widget.category,
//             style: TextStyle(
//               color: _isHovered
//                   ? Colors.black
//                   : Colors.grey.withOpacity(0.3),
//             ),
//           ),
//           backgroundColor: _isHovered
//               ? Colors.white // Background color on hover
//               : const Color.fromARGB(255, 37, 36, 36), // Default background color
//           shape: const StadiumBorder(), // Ensures the chip has a rounded shape
//           side: const BorderSide(
//             color: Color.fromARGB(255, 37, 36, 36), // Border color
//             width: 1, // Border width
//           ),
//         ),
//       ),
//     );
//   }
// }
