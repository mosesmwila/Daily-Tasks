import 'package:daily_tasks/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container (
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
        children: [
           searchBox(),
        ],
      ),
    ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: tdBlack,size:20,),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size:30,
  ),
          SizedBox(
            height: 40,
              width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.png'),
            ),
          )
      ]),
    );
  }
}
