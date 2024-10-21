import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';
import '../widgets/app_bar.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of sections containing titles and related video data
    final List<Map<String, dynamic>> sections = [
      {
        'title': 'Lofi Music',
        'videos': [
          {'imagePath': 'assets/l_one.jpg', 'title': 'Dubbed', 'views': '1M views • 1 day ago'},
          {'imagePath': 'assets/l_one.jpg', 'title': 'Anime', 'views': '1M views • 1 day ago'},
          {'imagePath': 'assets/l_one.jpg', 'title': 'Rain', 'views': '1M views • 1 day ago'},
        ]
      },
      {
        'title': 'Chill Beats',
        'videos': [
          {'imagePath': 'assets/l_two.jpg', 'title': 'Soul', 'views': '900K views • 2 days ago'},
          {'imagePath': 'assets/l_two.jpg', 'title': 'Pop', 'views': '900K views • 2 days ago'},
          {'imagePath': 'assets/l_two.jpg', 'title': 'RnB', 'views': '900K views • 2 days ago'},
        ]
      },
      {
        'title': 'Jazz Vibes',
        'videos': [
          {'imagePath': 'assets/l_three.jpg', 'title': 'Electric', 'views': '1.2M views • 3 days ago'},
          {'imagePath': 'assets/l_three.jpg', 'title': 'Funk', 'views': '1.2M views • 3 days ago'},
          {'imagePath': 'assets/l_three.jpg', 'title': 'Afro', 'views': '1.2M views • 3 days ago'},
        ]
      },
      {
        'title': 'Focus Music',
        'videos': [
          {'imagePath': 'assets/l_four.jpg', 'title': 'Study', 'views': '800K views • 4 days ago'},
          {'imagePath': 'assets/l_four.jpg', 'title': 'Work', 'views': '800K views • 4 days ago'},
          {'imagePath': 'assets/l_four.jpg', 'title': 'Hustle', 'views': '800K views • 4 days ago'},
        ]
      },
      {
        'title': 'Relaxation',
        'videos': [
          {'imagePath': 'assets/l_five.jpg', 'title': 'Roadtrip', 'views': '2M views • 5 days ago'},
          {'imagePath': 'assets/l_five.jpg', 'title': 'Walking', 'views': '2M views • 5 days ago'},
          {'imagePath': 'assets/l_five.jpg', 'title': 'Yoga', 'views': '2M views • 5 days ago'},
        ]
      }
    ];

    return Scaffold(
      appBar: const CustomAppBar(), // Custom AppBar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories Section
            Container(
              padding: const EdgeInsets.all(8.0),
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

            // Iterate over each section
            for (var section in sections)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section title
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      section['title'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  // Videos in each section
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: section['videos'].length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // 3 columns
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 16 / 9,
                    ),
                    itemBuilder: (context, index) {
                      // Get the current video data
                      final video = section['videos'][index];
                      return VideoCard(
                        imageAsset: video['imagePath']!,
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
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

// Category Chip Widget
class CategoryChip extends StatelessWidget {
  final String category;
  const CategoryChip(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(category),
        backgroundColor: Colors.white,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
