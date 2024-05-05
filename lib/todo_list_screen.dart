import 'package:flutter/material.dart';
import 'package:todo_listview_app/edit_todo_screen.dart';
import 'package:todo_listview_app/todo_edit_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App Home Screen"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
                title:  const Text("Todo Title"),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Todo Body"),
                Text("Time")
              ],
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  onPressed: (){
                   showDialog(context: context, builder:(context){
                     return AlertDialog(
                       title: Text("Delete Todo"),
                       content: Text("Are you sure you want to delete?"),
                       actions: [
                         TextButton(onPressed: (){
                           Navigator.pop(context);
                         }, child: Text("Cancel")),
                         TextButton(onPressed: (){}, child: Text("Yess, Delete",style: TextStyle(color: Colors.red),)),
                       ],

                     );

                   }
                   );
                  }, icon: const Icon(Icons.delete_forever_outlined),),
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditTodoScreen() ));
                  }, icon: const Icon(Icons.edit),),

              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  TodoEditScreen()));
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),


    );
  }
}
