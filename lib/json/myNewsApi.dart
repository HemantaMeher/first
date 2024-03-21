// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class MyNewsApi extends StatefulWidget {
//   const MyNewsApi({super.key});

//   @override
//   State<MyNewsApi> createState() => _MyNewsApiState();
// }

// class _MyNewsApiState extends State<MyNewsApi> {
//   Future<String> newsApi() async{
//     Uri url = Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2023-06-13&sortBy=publishedAt&apiKey=59f77548a1dc4554baaad23890539606');
//     final response = await http.get(url);
//     if (response.statusCode == 200){
//       print(response.body.toString());
//     }
//     return response.body;
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     newsApi();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('My News API'),centerTitle: true,),
//       body: FutureBuilder(
//         future: newsApi(),
//         builder: (context,AsyncSnapshot<String> snapshot) {
//           Widget w;

//           if(snapshot.hasData){
//             var data = snapshot.data!;
//             var body = json.decode(data);
//             int count = body['articles'].length;
//             print(count);

//             w = Center(
//               child: ListView.builder(
//                 itemCount: count,
//                 itemBuilder: (context, index) {
//                   String auther = body['articles'][index]['auther'].toString();
//                   String title = body['articles'][index]['title'].toString();
//                   String description = body['articles'][index]['description'].toString();
//                   String url = body['articles'][index]['url'].toString();
//                   String urlToImage = body['articles'][index]['urlToImage'].toString();
//                   String publishedAt = body['articles'][index]['publishedAt'].toString();
//                   String content = body['articles'][index]['content'].toString();
                  
//                   return Card(
//                     elevation: 3,
//                     color: Colors.grey.shade400,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 5,),
//                       ],
//                     ),
//                   );

//                 },
//               )
//             );

            
//           }


//         },
//       ),
//     );
//   }
// }