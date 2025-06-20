// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData.light(),
//       theme: ThemeData(scaffoldBackgroundColor: Color(0xff26ae4c)),
//       home: Scaffold(
//         body: Stack(
//           fit: StackFit.expand,
//           children: [
//             Opacity(
//               opacity: 0.7,
//               child: Image.asset(
//                 "assets/images/BB-Photoroom.jpg",
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Foodtek',
//                     style: TextStyle(
//                       fontSize: 80,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.yellow,
//                       shadows: [
//                         Shadow(
//                           color: Colors.black,
//                           offset: Offset(2, 2),
//                           blurRadius: 4,
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     "Your smart food guide",
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/sign_up_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodtek',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFF4CAF50),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}
