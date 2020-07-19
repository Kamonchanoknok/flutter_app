import 'package:flutter/material.dart';
import 'package:flutterapp/config/index.dart';
import 'package:flutterapp/provider/model/market.dart';
import 'package:flutterapp/provider/model/user.dart';
import 'package:flutterapp/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => UserProvider()),
              ChangeNotifierProvider(create: (_) => MarketProvider()),
            ],
            child: Consumer<MarketProvider>(builder: (_, settings, child) {
              print("${settings.color} dark !");
              return MaterialApp(
                title: 'Handy Man',
                theme: (ThemeData(
                  brightness:
                      settings.color ? Brightness.dark : Brightness.light,
                  primaryColor:
                      settings.color ? Colors.redAccent : Colors.amberAccent,
                )),
                onGenerateRoute: RouteGenerator.generateRoute,
                initialRoute: '/splash',
              );
            })));
  }
}
