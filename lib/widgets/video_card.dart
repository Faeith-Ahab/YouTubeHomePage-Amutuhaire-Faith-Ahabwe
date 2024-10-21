import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String views;
  const VideoCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              views,
              style: TextStyle(color: Colors.grey[500], fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}





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
