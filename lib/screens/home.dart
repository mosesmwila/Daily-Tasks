import 'package:daily_tasks/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
          title: Row(children: [
            Icon(
              Icons.menu,
              color: tdBlack,
              size:30,
    )
        ]),
      ),
      body: const Text('This is home screen.'),
    );
  }
}
