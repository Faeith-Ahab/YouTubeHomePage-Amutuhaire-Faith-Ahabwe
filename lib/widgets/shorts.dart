
import 'package:flutter/material.dart';

class Shorts extends StatelessWidget {
  const Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildVideoBox(
              imageUrl:
                  'https://as1.ftcdn.net/v2/jpg/05/75/13/70/1000_F_575137027_egi92mzw07O3EKBitzCiIZG2IQlxpo83.jpg',
              title: 'Go Green',
              subtitle: '10k views',
            ),
            const SizedBox(width: 10),
            buildVideoBox(
              imageUrl:
                  // 'https://i.pinimg.com/236x/cf/d3/18/cfd318ca139f54c07d4806834b75375e.jpg',
                  'https://i.pinimg.com/236x/76/44/c9/7644c92dfb077e9a487514c4bc13a639.jpg',
              title: 'Get ready!',
              subtitle: '100k views',
            ),
            const SizedBox(width: 10),
            buildVideoBox(
              imageUrl:
                  'https://i.pinimg.com/236x/17/da/40/17da4064535cd02caf9369e9d2abe3d4.jpg',
              title: 'Insta fame',
              subtitle: '7.5k views',
            ),
            const SizedBox(width: 10),
            buildVideoBox(
              imageUrl:
                  'https://i.pinimg.com/236x/cb/5c/ba/cb5cba107115b12a09a5a5a0726bcb98.jpg',
              title: 'Rythms',
              subtitle: '3k views',
            ),
            const SizedBox(width: 10),
            buildVideoBox(
              imageUrl:
                  'https://i.pinimg.com/236x/81/74/34/81743447a6dfb947573ce9e572d06a4d.jpg',
              title: 'Check out time',
              subtitle: '102k views',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildVideoBox({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.5),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 200,
            fit: BoxFit.cover,
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: Column(
              children: [
                Icon(Icons.more_vert, color: Colors.white, size: 16),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0), // Shadow position
                        blurRadius: 2.0,          // Blur radius
                        color: Colors.black,      // Shadow color
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0), // Shadow position
                        blurRadius: 2.0,          // Blur radius
                        color: Colors.black,      // Shadow color
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const RowWidget(),
//     );
//   }
// }

// class RowWidget extends StatelessWidget {
//   const RowWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               buildVideoBox(
//                 imageUrl:
//                     'https://as1.ftcdn.net/v2/jpg/05/75/13/70/1000_F_575137027_egi92mzw07O3EKBitzCiIZG2IQlxpo83.jpg',
//                 title: 'Go Green',
//                 subtitle: '10k views',
//               ),
//               const SizedBox(width: 10),
//               buildVideoBox(
//                 imageUrl:
//                     'https://i.pinimg.com/236x/cf/d3/18/cfd318ca139f54c07d4806834b75375e.jpg',
//                 title: 'Get ready!',
//                 subtitle: '100k views',
//               ),
//               const SizedBox(width: 10),
//               buildVideoBox(
//                 imageUrl:
//                     'https://i.pinimg.com/236x/17/da/40/17da4064535cd02caf9369e9d2abe3d4.jpg',
//                 title: 'Insta famous',
//                 subtitle: '7.5k views',
//               ),
//               const SizedBox(width: 10),
//               buildVideoBox(
//                 imageUrl:
//                     'https://i.pinimg.com/236x/cb/5c/ba/cb5cba107115b12a09a5a5a0726bcb98.jpg',
//                 title: 'Rythms',
//                 subtitle: '3k views',
//               ),
//               const SizedBox(width: 10),
//               buildVideoBox(
//                 imageUrl:
//                     'https://i.pinimg.com/236x/81/74/34/81743447a6dfb947573ce9e572d06a4d.jpg',
//                 title: 'Check out time',
//                 subtitle: '102k views',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildVideoBox({
//     required String imageUrl,
//     required String title,
//     required String subtitle,
//   }) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20.5),
//       child: Stack(
//         children: [
//           Image.network(
//             imageUrl,
//             width: 100,
//             height: 200,
//             fit: BoxFit.cover,
//           ),
//           const Positioned(
//             top: 10,
//             right: 10,
//             child: Column(
//               children: [
//                 Icon(Icons.more_vert, color: Colors.white, size: 16),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 10,
//             left: 10,
//             right: 10,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 11,
//                     fontWeight: FontWeight.bold,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(1.0, 1.0), // Shadow position
//                         blurRadius: 2.0,          // Blur radius
//                         color: Colors.black,      // Shadow color
//                       ),
//                     ],
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Text(
//                   subtitle,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 8,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(1.0, 1.0), // Shadow position
//                         blurRadius: 2.0,          // Blur radius
//                         color: Colors.black,      // Shadow color
//                       ),
//                     ],
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


