import 'package:flutter/material.dart';
import 'utils/routes.dart';

void main() {
  runApp(const GosgyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class GosgyApp extends StatelessWidget {
  const GosgyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            title: 'Saýlanan goşgylar',
            initialRoute: '/welcome',
            routes: appRoutes,
            debugShowCheckedModeBanner: false,
          );
        
  }
}
