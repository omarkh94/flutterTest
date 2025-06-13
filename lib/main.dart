

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Omar Ibrahim',
          style: GoogleFonts.glory(
            fontSize: 30,
            color: Colors.black87,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    'Strawberry Pavlova Recipe',
                    style: GoogleFonts.raleway(color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(fontSize: 18),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            3,
                            (index) => Icon(Icons.star, color: Colors.amber),
                          ),
                          ...List.generate(
                            2,
                            (index) =>
                                Icon(Icons.star_border, color: Colors.grey),
                          ),
                          SizedBox(width: 8),
                          Text("17 review"),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildIconInfo(Icons.restaurant, 'Feed\n2 - 4'),
                          _buildIconInfo(Icons.category, 'Feed\n2 - 4'),
                          _buildIconInfo(Icons.local_cafe, 'Feed\n2 - 4'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconInfo(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.green),
        SizedBox(height: 4),
        Text(text, textAlign: TextAlign.center),
      ],
    );
  }
}
