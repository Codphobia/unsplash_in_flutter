import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:http/http.dart' as http;

import 'model/wallpaper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<WallPaper>> getData() async {
    String url = 'https://api.unsplash.com/photos/?client_id=IsjX04rWVx2WbzL6IFZT7ioO0utRddU_WAKxNk3yIPg';
    Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var jsonArray = jsonData;

      print(jsonArray);
      List<WallPaper> wallpapers = [];
      for (var wallpaperArray in jsonArray) {
        WallPaper wallPaper = WallPaper.fromMap(wallpaperArray);
        wallpapers.add(wallPaper);
      }
      return wallpapers;
    }
    return [];
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Wallpaper'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<WallPaper>>(
        future: getData(),
        builder: (BuildContext context,AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            // List<WallPaper> wallpapers = snapshot.data!;
            return Center(child: Text(snapshot.data!.length.toString()),);
          }
        },
      ),
    ));
  }
}
