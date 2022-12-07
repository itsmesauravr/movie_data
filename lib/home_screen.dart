import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movie_data/home_api.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            pro.getHomeData();
            for (var element in pro.datas) {
              log(element.title.toString());
            }
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
