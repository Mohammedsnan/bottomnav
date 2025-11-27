import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_box,size: 30,color: Colors.blue,),
          SizedBox(height: 20,),
          Text('account',style: TextStyle(fontSize: 24,color: Colors.grey),)
        ],
      ),
    );
  }
}