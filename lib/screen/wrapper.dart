import 'package:discuss/module/user.dart';
import 'package:discuss/screen/auth/login.dart';
import 'package:discuss/screen/home/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if(user == null){
      return Login();
    }else{
      return Home();
    }

  }
}
