import 'package:app_realtime/pages/home.dart';
import 'package:app_realtime/pages/status.dart';
import 'package:app_realtime/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => SocketService())
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => HomePage(),
          'status': ( _ ) => StatusPage()
        },
      ),
    );
  }
}