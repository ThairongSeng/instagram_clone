import 'package:flutter/material.dart';
import 'package:instagram_clone/home_page.dart';
import 'package:instagram_clone/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: AppBarTheme(
            elevation: 1,
            color: Colors.white,
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1))),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (currentPage == 1) ? SearchPage() : HomePage() ,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.home,
                color: (currentPage == 0)
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.search,
                color: (currentPage == 1)
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.ondemand_video,
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.card_travel,
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
