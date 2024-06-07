import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageGridSelectorExample(),
    );
  }
}

class ImageGridSelectorExample extends StatelessWidget {
  const ImageGridSelectorExample({super.key});

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: GridView(

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 16),
          children: [
            Image.network('https://picsum.photos/id/0/5000/3333'),
            Image.network('https://picsum.photos/id/1/5000/3333'),
            Image.network('https://picsum.photos/id/2/5000/3333'),
            Image.network('https://picsum.photos/id/3/5000/3333'),
            Image.network('https://picsum.photos/id/4/5000/3333'),
            Image.network('https://picsum.photos/id/7/4728/3168'),
            Image.network('https://picsum.photos/id/10/2500/1667'),
            Image.network('https://picsum.photos/id/11/2500/1667'),
            Image.network('https://picsum.photos/id/12/2500/1667'),
            Image.network('https://picsum.photos/id/13/2500/1667'),

          ],

        ),
      ),
    );
  }
}

