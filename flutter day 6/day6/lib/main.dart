import 'package:day6/big.dart';
import 'package:day6/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List buldings = [
    bulding(
        name: 'kuwait tower',
        imageURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg'),
    bulding(
        name: 'Liberation Tower',
        imageURL:
            "https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg"),
    bulding(
        name: "The Great Mosque",
        imageURL:
            "https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Kuwait City LandMarks')),
        body: Center(
          child: ListView.builder(
              itemCount: buldings.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(buldings[index].imageURL),
                  title: Text(buldings[index].name),
                  trailing: IconButton(
                    icon: Icon(Icons.ac_unit_rounded),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => big(salem: buldings[index]),
                        ),
                      );
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
