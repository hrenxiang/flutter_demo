import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '上当了吧'),
      routes: {
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(43, 46, 48, 1),
        title: Text(widget.title, style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Color.fromRGBO(255, 255, 255, 1),),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed'),
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Color.fromRGBO(255, 255, 255, 1),),
            tooltip: 'More',
            onPressed: () => debugPrint('More button is pressed'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '单身狗，点进来干嘛啊！啊！',
              style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600),
            ),
            Image.asset(
              'assets/images/2.png',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Go to Second Page')
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('还往里点是不是', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),
        backgroundColor: const Color.fromRGBO(43, 46, 48, 1),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back'),
        ),
      ),
    );
  }
}
