import 'package:flutter/material.dart';
import 'package:todo_listview_app/todo_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoListScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.teal,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          )
        ),
        inputDecorationTheme: InputDecorationTheme(

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green)
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown)
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red
            )
          )
        )
      ),
    );
  }
}
