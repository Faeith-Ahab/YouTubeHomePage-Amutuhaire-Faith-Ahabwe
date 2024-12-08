import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String views;
  final String avatarAsset; 

  const VideoCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.views,
    required this.avatarAsset, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Dark mode background
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video Thumbnail
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Title and Avatar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Align vertically
              children: [
                // Avatar
                CircleAvatar(
                  radius: 18, // Adjust size of the avatar
                  backgroundImage: AssetImage(avatarAsset),
                ),
                const SizedBox(width: 8), // Space between avatar and title
                // Title and Dots
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0), // Added space before title
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Ensure vertical alignment
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // Three vertical dots
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '⋮', // Vertical ellipsis (three dots)
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Views with Transform to adjust position
          Transform.translate(
            offset: const Offset(0, -18), // Adjust this value to fine-tune the position
            child: Padding(
              padding: const EdgeInsets.only(left: 60.0, bottom: 0.0),
              child: Text(
                views,
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   final String imageAsset;
//   final String title;
//   final String views;
//   final String avatarAsset; // New field for avatar image

//   const VideoCard({
//     super.key,
//     required this.imageAsset,
//     required this.title,
//     required this.views,
//     required this.avatarAsset, // Initialize the new field
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black, // Dark mode background
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Video Thumbnail
//           Expanded(
//             child: SizedBox(
//               width: double.infinity,
//               child: Image.asset(
//                 imageAsset,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Title and Avatar
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
//             child: Row(
//               children: [
//                 // Avatar
//                 CircleAvatar(
//                   radius: 18, // Adjust size of the avatar
//                   backgroundImage: AssetImage(avatarAsset),
//                 ),
//                 const SizedBox(width: 8), // Space between avatar and title
//                 // Title and Dots
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0), // Added space before title
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             title,
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                             ),
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         // Three vertical dots
//                         const Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               '⋮', // Vertical ellipsis (three dots)
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Views with Transform to adjust position
//           Transform.translate(
//             offset: const Offset(0, -14), // Adjust this value to fine-tune the position
//             child: Padding(
//               padding: const EdgeInsets.only(left: 58.0, bottom: 0.0),
//               child: Text(
//                 views,
//                 style: TextStyle(color: Colors.grey[500], fontSize: 12),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   final String imageAsset;
//   final String title;
//   final String views;
//   const VideoCard({
//     super.key,
//     required this.imageAsset,
//     required this.title,
//     required this.views,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[900],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: SizedBox(
//               width: double.infinity,
//               child: Image.asset(
//                 imageAsset,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               title,
//               style: const TextStyle(color: Colors.white, fontSize: 14),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               views,
//               style: TextStyle(color: Colors.grey[500], fontSize: 12),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   const VideoCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[900],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: SizedBox(
//               width: double.infinity,
//               child: Image.asset(
//                 'assets/l_one.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               'Lofi Music',
//               style: TextStyle(color: Colors.white, fontSize: 14),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               '1M views • 1 day ago',
//               style: TextStyle(color: Colors.grey[500], fontSize: 12),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
