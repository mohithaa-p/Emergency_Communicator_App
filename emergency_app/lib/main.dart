import 'package:flutter/material.dart';
import 'package:emergency_app/pages/signin.dart';
import 'package:emergency_app/pages/dashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/signin',
    routes: {
      '/signin': (context) => Signin(),
    },
    onGenerateRoute: (settings) {
      if (settings.name == '/dashboard') {
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) {
            return Dashboard(name: args['name'], email: args['email'],isPublicCommunity:args['isPublicCommunity'], isPrivateCommunity:args['isPrivateCommunity']); // Pass both name and email
          },
        );
      }
      return null;
},
));
}
