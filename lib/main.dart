import 'package:discuss/screen/wrapper.dart';
import 'package:discuss/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'module/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

