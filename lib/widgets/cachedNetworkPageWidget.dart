// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
//
// class CachedNetworkImageScreen extends StatefulWidget {
//   const CachedNetworkImageScreen({super.key});
//
//   @override
//   State<CachedNetworkImageScreen> createState() => _CachedNetworkImageScreenState();
// }
//
// class _CachedNetworkImageScreenState extends State<CachedNetworkImageScreen> {
//
//   final _image1 = 'https://media.gettyimages.com/id/1333977253/photo/male-lion-resting-on-a-rock.jpg?s=612x612&w=gi&k=20&c=x785lj0J9oEVJXKB_I1yVsvRXjA4i7sdAte9W91-ZTA=';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Cached Network Image'),),
//
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const Text('Cached Network Image page'),
//               SizedBox(height: 10,),
//               CachedNetworkImage(
//                 width: double.infinity,
//                 height: 250,
//                 fit: BoxFit.cover,
//                 imageUrl: _image1,
//                 progressIndicatorBuilder: (context, url, downloadProgress) =>
//                   CircularProgressIndicator(value: downloadProgress.progress),
//                   errorWidget: (context, url, error) => Text(error.toString()),
//               ),
//
//               SizedBox( height: 10,),
//
//               ElevatedButton(onPressed: () {
//                 CachedNetworkImage.evictFromCache(_image1);
//               }, child: Text('Remove Cached Image')),
//
//               SizedBox(height: 20,),
//               Image.network(_image1,height: 250,)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }